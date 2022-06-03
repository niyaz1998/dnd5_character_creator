import 'package:injectable/injectable.dart';

/// TODO: Firebase remote config
abstract class EnvConfig {
  String get host;
}

@Injectable(as: EnvConfig)
@dev
class DevEnvConfig extends EnvConfig {
  @override
  String get host => "dev host";
}

@Injectable(as: EnvConfig)
@prod
class ProdEnvConfig extends EnvConfig {
  @override
  String get host => "prod host";
}
