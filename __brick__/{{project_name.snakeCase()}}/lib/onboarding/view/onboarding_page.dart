import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{project_name.snakeCase()}}/injectable.dart';
import 'package:{{project_name.snakeCase()}}/login/bloc/login_bloc.dart';
import 'package:{{project_name.snakeCase()}}/onboarding/models/onboarding_model.dart';
import 'package:{{project_name.snakeCase()}}/onboarding/widgets/dots_indicator.dart';
import 'package:{{project_name.snakeCase()}}/resources/resources.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  static const routeName = 'onboarding';

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final models = [
    const OnboardingModel(
      title: 'Unlock the potential of AI in your Pocket',
      description: 'Welcome to the new era of AI-powered apps',
      imagePath: UI.onboarding1,
    ),
    const OnboardingModel(
      title: 'Get instant answers',
      description:
          'Type anything you’d like to ask or choose from ready-made questions!',
      imagePath: UI.onboarding2,
    ),
  ];
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    _pageController = PageController()
      ..addListener(() {
        if (_pageController.page != null) {
          setState(() {
            currentPage = _pageController.page!.round();
            if (_pageController.page! % 1 == 0) {
              // vibrationFeeback();
            }
          });
        }
      });
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return Scaffold(
      backgroundColor: 'FFFFFF'.toColor,
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: models.length,
              itemBuilder: (context, index) {
                final model = models[index];
                return Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        model.imagePath,
                        width: MediaQuery.of(context).size.width * 0.84,
                      ),
                      const SizedBox(height: 32),
                      Text(
                        model.title,
                        style: textTheme.headlineSmall
                            ?.copyWith(color: colorScheme.onBackground),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      Text(
                        model.description,
                        style: textTheme.titleMedium?.copyWith(
                          color: colorScheme.onBackground,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          DotsIndicator(
            currentPage: currentPage,
            length: models.length,
          ),
          DefaultTextStyle(
            style: theme.textTheme.labelLarge!.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 125,
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        // vibrationFeeback();
                        getIt<LoginBloc>().add(const LoginEvent.guestLogin());
                      },
                      child: Container(
                        height: 65,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: 'F4F6FA'.toColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                        child: Text('Skip',
                            style: TextStyle(
                              color: colorScheme.primary,
                            )),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: BlocBuilder<LoginBloc, LoginState>(
                      bloc: getIt<LoginBloc>(),
                      builder: (context, state) {
                        return state.maybeMap(
                          loading: (_) {
                            return Center(
                              child: CircularProgressIndicator.adaptive(
                                backgroundColor: colorScheme.primary,
                                valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.white,
                                ),
                              ),
                            );
                          },
                          orElse: () {
                            return GestureDetector(
                              onTap: () async {
                                // vibrationFeeback();
                                if (models.length - 1 == currentPage) {
                                  // getIt<DatabaseService>().setSetting(
                                  //   Settings.onboarded.name,
                                  //   isOn: true,
                                  // );
                                  getIt<LoginBloc>()
                                      .add(const LoginEvent.guestLogin());
                                } else {
                                  await _pageController.animateToPage(
                                    currentPage + 1,
                                    duration: const Duration(milliseconds: 600),
                                    curve: Curves.easeInOut,
                                  );
                                }
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 100),
                                height: 65,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: colorScheme.primary,
                                  borderRadius: BorderRadius.circular(100),
                                  boxShadow: [
                                    BoxShadow(
                                      color:
                                          theme.primaryColor.withOpacity(0.25),
                                      blurRadius: 24,
                                      offset: const Offset(4, 8),
                                    )
                                  ],
                                ),
                                child: const Text('Next'),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
