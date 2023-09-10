// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeyapiKey = [
    2595367097,
    3633537523,
    793522117,
    3137785977,
    3927806240,
    31997626
  ];
  static const List<int> _envieddataapiKey = [
    2595367114,
    3633537432,
    793522152,
    3137785880,
    3927806274,
    31997657
  ];
  static final String apiKey = String.fromCharCodes(
    List.generate(_envieddataapiKey.length, (i) => i, growable: false)
        .map((i) => _envieddataapiKey[i] ^ _enviedkeyapiKey[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyrevenueCatPlayStore = [
    706173982,
    748979632,
    1297354966,
    4178869547,
    3672631777,
    787806964,
    2396395257,
    859048032
  ];
  static const List<int> _envieddatarevenueCatPlayStore = [
    706174073,
    748979679,
    1297354937,
    4178869580,
    3672631742,
    787806869,
    2396395163,
    859047939
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
    631642584,
    3702181345,
    69875171,
    3001106112,
    1030113342,
    3349305709,
    2071662796,
    27210792
  ];
  static const List<int> _envieddatarevenueCatAppStore = [
    631642553,
    3702181265,
    69875091,
    3001106092,
    1030113377,
    3349305612,
    2071662766,
    27210827
  ];
  static final String revenueCatAppStore = String.fromCharCodes(
    List.generate(_envieddatarevenueCatAppStore.length, (i) => i,
            growable: false)
        .map((i) =>
            _envieddatarevenueCatAppStore[i] ^ _enviedkeyrevenueCatAppStore[i])
        .toList(growable: false),
  );
}
