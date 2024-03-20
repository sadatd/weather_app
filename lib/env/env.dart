import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied()
abstract class Env {
  // OpenWeatherMap API key
  @EnviedField(varName: 'APPID', obfuscate: true)
  static final String appId = _Env.appId;
}