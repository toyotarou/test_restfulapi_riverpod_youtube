import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_restfulapi_riverpod_youtube/app_colors.dart';
import 'app_box_shadow.dart';
import 'text_widget.dart';

Widget appButton({
  required String buttonText,
  Color color = AppColors.primaryBackground,
  Color borderColor = AppColors.primaryFourthElementText,
  void Function()? func,
}) {
  return GestureDetector(
    onTap: func,
    child: Container(
      width: 325.w,
      height: 50.h,
      alignment: Alignment.center,
      decoration: appBoxShadow(),
      child: text16Normal(
        text: buttonText,
        color: AppColors.primaryBackground,
      ),
    ),
  );
}
