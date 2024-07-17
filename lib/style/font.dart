import 'package:assignment/style/property.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appFont = GoogleFonts.poppins(fontStyle: FontStyle.normal);

headLine7TextStyleFontSize28(Color color) => appFont.copyWith(
    fontSize: fontSize28,
    fontWeight: FontWeight.w700,
    color: color,
    height: fontHeight);


headLine5TextStyleFontSize15(Color color) => appFont.copyWith(
    fontSize: fontSize15,
    fontWeight: FontWeight.w500,
    color: color,
    height: fontHeight);

headLine4TextStyleFontSize16(Color color) => appFont.copyWith(
    fontSize: fontSize16,
    fontWeight: FontWeight.w400,
    color: color,
    height: fontHeight);

headLine3TextStyleFontSize14(Color color) => appFont.copyWith(
    fontSize: fontSize14,
    fontWeight: FontWeight.w300,
    color: color,
    height: fontHeight);

headLine3TextStyleFontSize12(Color color) => appFont.copyWith(
    fontSize: fontSize12,
    fontWeight: FontWeight.w300,
    color: color,
    height: fontHeight);

headLine5TextStyleFontSize6(Color color) => appFont.copyWith(
    fontSize: fontSize6,
    fontWeight: FontWeight.w500,
    color: color,
    height: fontHeight);



