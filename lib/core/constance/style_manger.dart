import 'package:flutter/material.dart';

import 'Fonts_Manger.dart';
TextStyle _getTextStyle(Color color, FontWeight fontWeight, double fontSize) {
  return TextStyle(
      color: color,
      fontFamily: FontConstants.fontFamily,
      fontWeight: fontWeight,
      fontSize: fontSize);
}

/// Regular Style
TextStyle getRegularStyle({
  required Color color,
  double fontSize = FontSizeManger.s12,
}) {
  return _getTextStyle(color, FontWeighManger.regular, fontSize);
}

///Medium Style
TextStyle getMediumStyle({
  required Color color,
  double fontSize = FontSizeManger.s12,
}) {
  return _getTextStyle(color, FontWeighManger.medium, fontSize);
}

///Light Style

TextStyle getLightStyle({
  required Color color,
  double fontSize = FontSizeManger.s12,
}) {
  return _getTextStyle(color, FontWeighManger.light, fontSize);
}

///Bold Style

TextStyle getBoldStyle({
  required Color color,
  double fontSize = FontSizeManger.s12,
}) {
  return _getTextStyle(color, FontWeighManger.bold, fontSize);
}

/// SemiBold Style
TextStyle getSemiBoldStyle({
  required Color color,
  double fontSize = FontSizeManger.s12,
}) {
  return _getTextStyle(color, FontWeighManger.semiBold, fontSize,);
}

abstract class Styles {
  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontFamily: FontConstants.fontFamily,
    letterSpacing: 1.2,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

const TextStyle textStyle = TextStyle();