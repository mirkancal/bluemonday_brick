import 'package:flutter/material.dart';

import 'package:unique_string/app/app.dart';
import 'package:unique_string/bootstrap.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //@TODO
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await bootstrap(() => const App());
}
