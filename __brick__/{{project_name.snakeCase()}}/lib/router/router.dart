import 'package:go_router/go_router.dart';
import 'package:unique_string/home/view/home_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: ''.toRoute,
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);

extension X on String {
  String get toRoute => '/$this';
}
