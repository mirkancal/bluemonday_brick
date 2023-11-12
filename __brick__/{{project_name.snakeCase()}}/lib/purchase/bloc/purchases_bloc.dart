// ignore_for_file: library_private_types_in_public_api

// Importing necessary libraries and packages
import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:injectable/injectable.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/one_time_offers.dart';
import 'package:{{project_name.snakeCase()}}/purchase/models/subscription_package.dart';
import 'package:{{project_name.snakeCase()}}/purchase/service/purchase_service.dart';

// Importing part files
part 'purchases_event.dart';
part 'purchases_state.dart';
part 'purchases_bloc.freezed.dart';

// Singleton annotation for dependency injection
@singleton
// Bloc class for managing purchase events and states
class PurchasesBloc extends Bloc<PurchasesEvent, PurchasesState> {
  // Constructor for the bloc class
  PurchasesBloc(this.purchasesService) : super(const _Initial()) {
    // Event handlers for different purchase events
    on<_Started>(onStarted);
    on<_Purchase>(onPurchase);
    on<_Restore>(onRestore);

    on<_PremiumEvent>((event, emit) {
      emit(const AlreadyPremium());
    });

    // Event handler for selecting a package
    on<_SelectPackage>(
      (event, emit) {
        // Check if the current state is ItemsReady
        if (state is! ItemsReady) return;
        final current = state;
        // Get the selected item
        final item = (current as ItemsReady).items[event.index];
        // Check if trial is enabled for the selected item
        final isTrialEnabled = item.isIntroductoryOfferEligible &&
            (state as ItemsReady).trialEnabled;
        // Emit the new state with the selected item and trial status
        emit(
          ItemsReady(
            (state as ItemsReady).items,
            event.index,
            trialEnabled: isTrialEnabled,
          ),
        );
      },
    );

    // Event handler for toggling trial
    on<_ToggleTrial>(
      (event, emit) {
        // Check if the current state is ItemsReady
        if (state is! ItemsReady) return;
        final current = state;
        // Get the selected item
        final item =
            (current as ItemsReady).items[(state as ItemsReady).selectedIndex];

        // Check if trial is enabled and the item is eligible for trial
        final changeIndex =
            event.trialEnabled && !item.isIntroductoryOfferEligible;

        // Emit the new state with the updated trial status
        emit(
          current.copyWith(
            trialEnabled: event.trialEnabled,
            selectedIndex:
                changeIndex ? 1 : (state as ItemsReady).selectedIndex,
          ),
        );
      },
    );

    // Event handler for confirming purchase success
    on<_ConfirmPurchaseSuccess>((event, emit) {
      // Emit the state confirming the purchase by the user
      emit(const ConfirmedByUser());
    });

    // Listen to the infoStream from the purchase service
    add(const _Started());
    purchasesService.infoStream.listen((info) async {
      // Check if the user is premium
      final isPremium = await purchasesService.isPremium(customerInfo: info);
      // If the user is premium, emit the AlreadyPremium state
      if (isPremium) {
        add(const _PremiumEvent());
      } else {}
    });
  }
  // Variable to store the premium status of the user

  // Instance of the purchase service
  final PurchaseService purchasesService;

  // Function to handle the _Started event
  Future<void> onStarted(_Started event, Emitter<PurchasesState> emit) async {
    // Emit the _FetchLoading state
    emit(const _FetchLoding());
    //@TODO
    // final numberOfLaunches =
    //     getIt<ILocalStorageService>().getNumberOfLaunches();
    const numberOfLaunches = 0;

    // Variable to store the one time offers
    OneTimeOffers? oneTimeOffers;
    // If the number of launches is less than 3, get the special offer
    if (numberOfLaunches < 3) {
      oneTimeOffers = await purchasesService.getSpecialOffer();
    }
    // Get the offerings from the purchase service
    final offerings = await purchasesService.getOfferings();
    // If there are offerings, emit the ItemsReady state with the offerings
    if (offerings.isNotEmpty) {
      emit(
        ItemsReady(
          offerings,
          offerings.length - 1,
          oneTimeOffers: oneTimeOffers,
        ),
      );
    } else {
      // If there are no offerings, emit the _FetchFailure state
      emit(const _FetchFailure());
    }
  }

  // Function to handle the _Purchase event
  Future<void> onPurchase(_Purchase event, Emitter<PurchasesState> emit) async {
    // Check if the current state is ItemsReady
    if (state is! ItemsReady) return;
    final current = state;
    // Emit the _Loading state
    emit(const _Loading());
    try {
      // Try to purchase the package
      await purchasesService.purchasePackage(event.package.package);
      // If the purchase is successful, emit the Purchased state
      emit(Purchased(package: event.package));
      // Wait for a second
      await Future<void>.delayed(const Duration(seconds: 1));
      // Request a review from the user
      //@TODO Consider moving it to somewhere else
      await InAppReview.instance.requestReview();
      // emit(current);
      // add(const _Started());
    } catch (e) {
      // If the purchase fails, emit the _PurchaseFailure state
      emit(const _PurchaseFailure());
      // Emit the current state
      emit(current);
    }
  }

  // Function to handle the _Restore event
  Future<void> onRestore(_Restore event, Emitter<PurchasesState> emit) async {
    // Check if the current state is ItemsReady
    if (state is! ItemsReady) return;
    final current = state;

    // Emit the _WaitingToRestore state
    emit(const _WaitingToRestore());
    try {
      // Try to restore the purchases
      final result = await purchasesService.restorePurchases();
      // If the restore is successful, emit the Restored state
      result ? emit(const Restored()) : emit(const _RestoreFailure());
      // Emit the current state
      emit(current);
    } catch (e) {
      // If the restore fails, emit the _RestoreFailure state
      emit(const _RestoreFailure());
      // Emit the current state
      emit(current);
    }
  }
}

// Extension on ItemsReady to check if trial is available
extension X on ItemsReady {
  // Getter to check if any item is eligible for introductory offer
  bool get isTrialAvailable =>
      items.any((element) => element.isIntroductoryOfferEligible);
}
