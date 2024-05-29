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
