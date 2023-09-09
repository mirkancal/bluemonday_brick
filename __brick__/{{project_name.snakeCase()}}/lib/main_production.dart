import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/app/app.dart';
import 'package:{{project_name.snakeCase()}}/bootstrap.dart';
import 'package:{{project_name.snakeCase()}}/firebase_options_production.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await bootstrap(() => const App());
}
