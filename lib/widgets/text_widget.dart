import 'package:flutter/material.dart';

import '../app_colors.dart';

Widget text24Normal({required String text, Color color = AppColors.primaryText}) {
  return Text(
    text,
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: color),
  );
}

Widget text16Normal({required String text, Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    text,
    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: color),
  );
}

Widget text14Normal({required String text, Color color = AppColors.primaryThirdElementText}) {
  return Text(
    text,
    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: color),
  );
}

Widget textUnderline({required String text}) {
  return GestureDetector(
    onTap: () {},
    child: Text(
      text,
      style: const TextStyle(
        color: AppColors.primaryText,
        decoration: TextDecoration.underline,
        decorationColor: AppColors.primaryText,
      ),
    ),
  );
}
