import 'package:flutter/material.dart';

import '../app_colors.dart';

BoxDecoration appBoxShadow({Color color = AppColors.primaryElement, double radius = 15, double sR = 1, double bR = 2}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(radius),
    boxShadow: [
      BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: sR, blurRadius: bR, offset: const Offset(0, 1)),
    ],
  );
}

BoxDecoration appBoxDecorationTextField(
    {Color color = AppColors.primaryBackground, double radius = 15, Color borderColor = AppColors.primaryFourthElementText}) {
  return BoxDecoration(color: color, borderRadius: BorderRadius.circular(radius), border: Border.all(color: borderColor));
}
