part of 'purchases_bloc.dart';

@freezed
class PurchasesEvent with _$PurchasesEvent {
  const factory PurchasesEvent.started() = _Started;
  const factory PurchasesEvent.purchase(SubscriptionPackage package) =
      _Purchase;
  const factory PurchasesEvent.restore() = _Restore;
  const factory PurchasesEvent.confirmPurchaseSuccess() =
      _ConfirmPurchaseSuccess;
  const factory PurchasesEvent.selectPackage(int index) = _SelectPackage;
  const factory PurchasesEvent.toggleTrial({
    required bool trialEnabled,
  }) = _ToggleTrial;
}
