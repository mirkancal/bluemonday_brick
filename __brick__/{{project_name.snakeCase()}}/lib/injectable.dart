import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:{{project_name.snakeCase()}}/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<GetIt> configureDependencies() => init(getIt);
