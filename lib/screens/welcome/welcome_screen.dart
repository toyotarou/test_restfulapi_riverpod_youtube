import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'welcome_notifier.dart';

import '../../widgets/app_onboarding_page.dart';

class WelcomeScreen extends ConsumerWidget {
  WelcomeScreen({super.key});

  final PageController pageController = PageController();

  ///
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexDotProvider);

    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            PageView(
              controller: pageController,
              onPageChanged: (value) {
                ref.read(indexDotProvider.notifier).changeIndex(index: value);
              },
              children: [
                appOnBoardingPage(
                  pageController,
                  image: 'assets/images/reading.png',
                  title: 'page 1',
                  subTitle: 'first page',
                  index: 1,
                ),
                appOnBoardingPage(
                  pageController,
                  image: 'assets/images/man.png',
                  title: 'page 2',
                  subTitle: 'Second page',
                  index: 2,
                ),
                appOnBoardingPage(
                  pageController,
                  image: 'assets/images/boy.png',
                  title: 'page 3',
                  subTitle: 'Third page',
                  index: 3,
                ),
              ],
            ),
            Positioned(
              bottom: 50,
              child: DotsIndicator(
                position: index,
                dotsCount: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                decorator: DotsDecorator(
                  size: const Size.square(20.0),
                  activeSize: const Size(30.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
