import 'package:envied_flutter/envied.dart';
part 'env.g.dart';

@Envied(path: '.env')
abstract class Env {
  @EnviedField(
    varName: 'OPEN_AI_API_KEY',
    obfuscate: true,
  )
  static final String apiKey = _Env.apiKey;
  @EnviedField(
    varName: 'REVENUE_CAT_PLAY_STORE',
    obfuscate: true,
  )
  static final String revenueCatPlayStore = _Env.revenueCatPlayStore;
  @EnviedField(
    varName: 'REVENUE_CAT_APP_STORE',
    obfuscate: true,
  )
  static final String revenueCatAppStore = _Env.revenueCatAppStore;
}
