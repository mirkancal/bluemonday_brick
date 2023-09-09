// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeyapiKey = [
    1155369765,
    681163160,
    4015825025,
    1268562893,
    1401347645,
    499110566
  ];
  static const List<int> _envieddataapiKey = [
    1155369814,
    681163251,
    4015825068,
    1268562860,
    1401347679,
    499110597
  ];
  static final String apiKey = String.fromCharCodes(
    List.generate(_envieddataapiKey.length, (i) => i, growable: false)
        .map((i) => _envieddataapiKey[i] ^ _enviedkeyapiKey[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyrevenueCatPlayStore = [
    1532312922,
    806963193,
    3590879319,
    3505605502,
    1760433453,
    2895934496,
    3525229266,
    444278547
  ];
  static const List<int> _envieddatarevenueCatPlayStore = [
    1532312893,
    806963094,
    3590879288,
    3505605401,
    1760433522,
    2895934529,
    3525229232,
    444278640
  ];
  static final String revenueCatPlayStore = String.fromCharCodes(
    List.generate(_envieddatarevenueCatPlayStore.length, (i) => i,
            growable: false)
        .map((i) =>
            _envieddatarevenueCatPlayStore[i] ^
            _enviedkeyrevenueCatPlayStore[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyrevenueCatAppStore = [
    1273207546,
    2342653269,
    1399482718,
    484861040,
    1144433405,
    4007295301,
    1848169250,
    133696784
  ];
  static const List<int> _envieddatarevenueCatAppStore = [
    1273207451,
    2342653221,
    1399482670,
    484860956,
    1144433314,
    4007295268,
    1848169280,
    133696883
  ];
  static final String revenueCatAppStore = String.fromCharCodes(
    List.generate(_envieddatarevenueCatAppStore.length, (i) => i,
            growable: false)
        .map((i) =>
            _envieddatarevenueCatAppStore[i] ^ _enviedkeyrevenueCatAppStore[i])
        .toList(growable: false),
  );
}
