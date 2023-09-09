// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeyapiKey = [
    1489039062,
    1305855439,
    3772063909,
    3929749917,
    2420629808,
    2359839781
  ];
  static const List<int> _envieddataapiKey = [
    1489039013,
    1305855396,
    3772063880,
    3929750012,
    2420629842,
    2359839814
  ];
  static final String apiKey = String.fromCharCodes(
    List.generate(_envieddataapiKey.length, (i) => i, growable: false)
        .map((i) => _envieddataapiKey[i] ^ _enviedkeyapiKey[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyrevenueCatPlayStore = [
    681539,
    399018678,
    715852819,
    1011372737,
    1509867276,
    119095705,
    112996115,
    2079022507
  ];
  static const List<int> _envieddatarevenueCatPlayStore = [
    681508,
    399018713,
    715852924,
    1011372710,
    1509867347,
    119095800,
    112996209,
    2079022536
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
    3004641395,
    1808180065,
    2174806121,
    1407839925,
    3421803984,
    2833573618,
    4029853191,
    1567714410
  ];
  static const List<int> _envieddatarevenueCatAppStore = [
    3004641298,
    1808179985,
    2174806041,
    1407839961,
    3421803919,
    2833573523,
    4029853285,
    1567714313
  ];
  static final String revenueCatAppStore = String.fromCharCodes(
    List.generate(_envieddatarevenueCatAppStore.length, (i) => i,
            growable: false)
        .map((i) =>
            _envieddatarevenueCatAppStore[i] ^ _enviedkeyrevenueCatAppStore[i])
        .toList(growable: false),
  );
}
