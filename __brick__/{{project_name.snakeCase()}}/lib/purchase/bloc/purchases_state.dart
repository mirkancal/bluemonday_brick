part of 'purchases_bloc.dart';

@freezed
class PurchasesState with _$PurchasesState {
  const factory PurchasesState.initial() = _Initial;
  const factory PurchasesState.loading() = _Loading;
  const factory PurchasesState.fetchLoading() = _FetchLoding;
  const factory PurchasesState.waitingToRestore() = _WaitingToRestore;
  const factory PurchasesState.waitingToPurchase() = _WaitingToPurchase;
  const factory PurchasesState.purchased({
    required SubscriptionPackage package,
  }) = Purchased;
  const factory PurchasesState.restored() = Restored;
  const factory PurchasesState.itemsReady(
    List<SubscriptionPackage> items,
    int selectedIndex, {
    @Default(false) bool trialEnabled,
    OneTimeOffers? oneTimeOffers,
  }) = ItemsReady;
  const factory PurchasesState.fetchFailure() = _FetchFailure;
  const factory PurchasesState.purchaseFailure() = _PurchaseFailure;
  const factory PurchasesState.restoreFailure() = _RestoreFailure;
  const factory PurchasesState.alreadyPremium() = AlreadyPremium;

  /// This is the state when user successfully see the success dialog, so router can display homepage etc.
  const factory PurchasesState.purchaseSuccessConfirmed() = ConfirmedByUser;
}
