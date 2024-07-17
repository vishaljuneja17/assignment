import 'package:flutter/material.dart';

  ShapeBorder cardShapeBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0));
  BorderRadius textFieldBorderRadius = BorderRadius.circular(10.0);
  BorderRadius labelBorderRadius = BorderRadius.circular(12.0);
  BorderRadius bottomSheetBorderRadius = const BorderRadius.only(
      topRight: Radius.circular(14.0), topLeft: Radius.circular(14.0));

  //FONT SIZE
  double fontSize28 = 28.0;
  double fontSize22 = 22.0;
  double fontSize20 = 20.0;
  double fontSize18 = 18.0;
  double fontSize16 = 16.0;
  double fontSize15 = 15.0;
  double fontSize14 = 14.0;
  double fontSize12 = 12.0;
  double fontSize10 = 10.0;
  double fontSize6 = 6.0;

  double body2FontSize = 18.0;
  double body1FontSize = 14.0;

  double subTitle2FontSize = 15.0;
  double subTitle1FontSize = 16.0;

  double buttonFontSize = 18.0;
  double overLineFontSize = 18.0;
  double captionFontSize = 14.0;
  double errorTextFieldFontSize = 12.0;

  double fontHeight = 1.3;

getScreenHeight(BuildContext context) => MediaQuery.of(context).size.height;

getScreenWidth(BuildContext context) => MediaQuery.of(context).size.width;


Widget get getHeightSpace_2 => const SizedBox(height: 2);
Widget get getHeightSpace_5 => const SizedBox(height: 5);
Widget get getHeightSpace_10 => const SizedBox(height: 10);
Widget get getHeightSpace_15 => const SizedBox(height: 15);
Widget get getHeightSpace_20 => const SizedBox(height: 20);
Widget get getHeightSpace_30 => const SizedBox(height: 30);
Widget get getHeightSpace_40 => const SizedBox(height: 40);
Widget get getHeightSpace_50 => const SizedBox(height: 50);

Widget get getWidthSpace_2 => const SizedBox(width: 2);
Widget get getWidthSpace_5 => const SizedBox(width: 5);
Widget get getWidthSpace_10 => const SizedBox(width: 10);
Widget get getWidthSpace_15 => const SizedBox(width: 15);
