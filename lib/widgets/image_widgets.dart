import 'package:flutter/material.dart';

Widget appImage({required String imagePath, required double width, required double height}) {
  return Image.asset(imagePath, width: width, height: height);
}
