import 'package:flutter/material.dart';

import '../utils/string_const.dart';
extension TestStyleExtensions on TextStyle{



  TextStyle get normal24w500 => customStyle(
    fontSize :24,
    letterSpacing:0.0,
    weight:FontWeight.w500,
    fontFamily: StringConst.fontFamily
  );

  TextStyle textColor(Color v) => copyWith(color: v);

  TextStyle customStyle({
    required double letterSpacing,
    required double fontSize,
    required FontWeight weight,
    required String fontFamily,
  }) =>
      copyWith(
          letterSpacing: letterSpacing,
          fontSize: fontSize,
          fontWeight: weight,
          fontFamily: fontFamily
      );
}