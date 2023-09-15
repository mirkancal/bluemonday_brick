import 'package:flutter/material.dart';
import 'package:{{project_name.snakeCase()}}/analytics/service/analytics_service.dart';
import 'package:{{project_name.snakeCase()}}/injectable.dart';
import 'package:{{project_name.snakeCase()}}/login/bloc/login_bloc.dart';
import 'package:{{project_name.snakeCase()}}/notification/service/notification_service.dart';
import 'package:{{project_name.snakeCase()}}/purchase/view/paywall_page.dart';
import 'package:{{project_name.snakeCase()}}/router/router.dart';
import 'package:{{project_name.snakeCase()}}/version/service/version_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static const routeName = 'home';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getIt<AnalyticsService>().askATT();
    getIt<NotificationService>().requestPermission();
    getIt<VersionService>().initialize().then(
          (value) => getIt<VersionService>().showVersionDialog(context),
        );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                router.pushNamed(PaywallPage.routeName);
              },
              child: const Text('Paywall'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primaryContainer,
              ),
              onPressed: () {},
              child: const Text('Show notification'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.secondary,
              ),
              onPressed: () {
                getIt<VersionService>().showVersionDialog(context);
              },
              child: const Text('Show force update'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.secondaryContainer,
              ),
              onPressed: () {
                getIt<LoginBloc>().add(const LoginEvent.logOut());
              },
              child: const Text(
                'Log Out',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
