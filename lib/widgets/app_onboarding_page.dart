import 'package:flutter/material.dart';
import '../screens/sign_in/sign_in_screen.dart';

import 'app_box_shadow.dart';
import 'text_widget.dart';

Widget appOnBoardingPage(
  PageController pageController, {
  required String image,
  required String title,
  required String subTitle,
  required BuildContext context,
  int index = 0,
}) {
  return Column(
    children: [
      Image.asset(image),
      const SizedBox(height: 15),
      text24Normal(text: title),
      text16Normal(text: subTitle),
      const SizedBox(height: 100),
      nextButton(
        index: index,
        pageController: pageController,
        context: context,
      ),
    ],
  );
}

Widget nextButton({
  required int index,
  required PageController pageController,
  required BuildContext context,
}) {
  return InkWell(
    onTap: () {
      if (index < 3) {
        pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 300),
          curve: Curves.bounceIn,
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SignInScreen(),
          ),
        );
      }
    },
    child: Container(
      width: 300,
      height: 70,
      decoration: appBoxShadow(),
      child: Center(child: text16Normal(text: 'next', color: Colors.white)),
    ),
  );
}
