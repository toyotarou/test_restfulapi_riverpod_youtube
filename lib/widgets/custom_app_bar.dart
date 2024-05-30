import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_box_shadow.dart';
import 'image_widgets.dart';

import '../app_colors.dart';

import 'text_widget.dart';

AppBar buildAppBar({required String text}) {
  return AppBar(
    title: text16Normal(
      text: text,
      color: AppColors.primaryText,
    ),
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(10),
      child: Container(
        decoration: const BoxDecoration(color: Colors.redAccent),
        height: 1,
      ),
    ),
  );
}

Widget thirdPartyLogin() {
  return Container(
    margin: const EdgeInsets.only(left: 80, right: 80, top: 40),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _loginButton(iconPath: 'assets/icons/google.png'),
        _loginButton(iconPath: 'assets/icons/apple.png'),
        _loginButton(iconPath: 'assets/icons/facebook.png'),
      ],
    ),
  );
}

Widget _loginButton({required String iconPath}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(width: 40, height: 40, child: Image.asset(iconPath)),
  );
}

Widget appTextField({required String text, required String iconName, required String hintText, bool obscureText = false}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 25),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14Normal(text: text),
        Container(
          decoration: appBoxDecorationTextField(),
          child: Row(
            children: [
              appImage(imagePath: iconName, width: 50.w, height: 50.h),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                    disabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.transparent)),
                  ),
                  onChanged: (value) {},
                  autocorrect: false,
                  obscureText: obscureText,
                  onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
