import 'package:bookly/core/constance/color_constace.dart';
import 'package:flutter/material.dart';
import 'Fonts_Manger.dart';
import 'style_manger.dart';
import 'values_manger.dart';
ThemeData getAppTheme() {
  return ThemeData(
    /// Main Color Theme
    ///
    fontFamily: FontConstants.fontFamily,
    primaryColor: ColorConstance.primaryColor,
    primaryColorLight: ColorConstance.white,
    iconButtonTheme: IconButtonThemeData(
      style: ButtonStyle(
          backgroundColor:MaterialStateProperty.all(ColorConstance.white),
      )
    ),
    scaffoldBackgroundColor: ColorConstance.primaryColor,
    //primaryColorDark: ColorConstance.darkPrimary,
    disabledColor: ColorConstance.grey1,
    //splashColor: ColorConstance.lightPrimary,
    ///CardView theme
    cardTheme: const CardTheme(
      color: ColorConstance.white,
      shadowColor: ColorConstance.gray,
      elevation: AppSize.s4,
    ),

    /// app bar theme
    appBarTheme: AppBarTheme(
     // shadowColor: ColorConstance.lightPrimary,
        color: ColorConstance.primaryColor,
        centerTitle: true,
        elevation: AppSize.s4,
        titleTextStyle: getRegularStyle(
            color: ColorConstance.white,
            fontSize: FontSizeManger.s16)),

    /// button theme
    buttonTheme: const ButtonThemeData(
      shape: StadiumBorder(),
      //splashColor: ColorConstance.lightPrimary,
      disabledColor: ColorConstance.white,
      buttonColor: ColorConstance.white,
    ),

    ///elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
            color: ColorConstance.white, fontSize: FontSizeManger.s17),
        backgroundColor: ColorConstance.primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSize.s12)),
      ),
    ),

    ///text theme
    textTheme: TextTheme(
        displayLarge: getSemiBoldStyle(
            color: ColorConstance.white, fontSize: FontSizeManger.s16),
        headlineLarge: getSemiBoldStyle(
            color: ColorConstance.white, fontSize: FontSizeManger.s18),
        headlineMedium: getRegularStyle(
            color: ColorConstance.white, fontSize: FontSizeManger.s14),
        titleMedium:
        getMediumStyle(color: ColorConstance.primaryColor, fontSize: FontSizeManger.s16),
        titleSmall:
        getRegularStyle(color: ColorConstance.white, fontSize: FontSizeManger.s16),
        bodyLarge: getRegularStyle(color: ColorConstance.white),
        bodySmall: getRegularStyle(color: ColorConstance.white,fontSize: FontSizeManger.s12),
        bodyMedium: getRegularStyle(color: ColorConstance.white, fontSize: FontSizeManger.s12),
        labelSmall:
        getBoldStyle(color: ColorConstance.primaryColor, fontSize: FontSizeManger.s12),

    ),

    /// input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(
          AppPadding.p8,
        ),
        hintStyle: getRegularStyle(
            color: ColorConstance.gray,
            fontSize: FontSizeManger.s14),
        labelStyle: getMediumStyle(
            color: ColorConstance.gray, fontSize: FontSizeManger.s14),
        errorStyle:getRegularStyle(
            color: ColorConstance.error),

        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstance.gray,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstance.primaryColor,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstance.error,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: ColorConstance.primaryColor,
              width: AppSize.s1_5,
            ),
            borderRadius: BorderRadius.all(Radius.circular(AppSize.s8)))),
  );

}
