// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'env.dart';

// **************************************************************************
// EnviedGenerator
// **************************************************************************

class _Env {
  static const List<int> _enviedkeyapiKey = [
    383500709,
    3505534628,
    1497204402,
    4176685294,
    4026816442,
    247810153
  ];
  static const List<int> _envieddataapiKey = [
    383500758,
    3505534671,
    1497204383,
    4176685199,
    4026816472,
    247810058
  ];
  static final String apiKey = String.fromCharCodes(
    List.generate(_envieddataapiKey.length, (i) => i, growable: false)
        .map((i) => _envieddataapiKey[i] ^ _enviedkeyapiKey[i])
        .toList(growable: false),
  );
  static const List<int> _enviedkeyrevenueCatPlayStore = [
    3878566811,
    960849284,
    2941337263,
    3090835573,
    2737666842,
    1398476596,
    1497552364,
    3562584112
  ];
  static const List<int> _envieddatarevenueCatPlayStore = [
    3878566908,
    960849387,
    2941337280,
    3090835474,
    2737666885,
    1398476629,
    1497552270,
    3562584147
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
    2406982164,
    1894990268,
    3670591496,
    3487171440,
    560421668,
    1900300048,
    220042434,
    3185990647
  ];
  static const List<int> _envieddatarevenueCatAppStore = [
    2406982261,
    1894990284,
    3670591608,
    3487171356,
    560421755,
    1900300145,
    220042400,
    3185990548
  ];
  static final String revenueCatAppStore = String.fromCharCodes(
    List.generate(_envieddatarevenueCatAppStore.length, (i) => i,
            growable: false)
        .map((i) =>
            _envieddatarevenueCatAppStore[i] ^ _enviedkeyrevenueCatAppStore[i])
        .toList(growable: false),
  );
}
