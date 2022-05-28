import 'package:flutter/material.dart';

import 'color.dart';

/// Переносятся все текстовые стили из дизайн проекта.
/// Названия должны совпадат с дизайн проектом
/// для удобства сопоставления и использования

class AppTextStyles {
  static const TextStyle body1 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 24,
    color: AppColors.black,
  );

  static const TextStyle body2 = TextStyle(
    fontWeight: FontWeight.w800,
    fontSize: 24,
    color: AppColors.black,
  );
}

// const appTextTheme = AppTextTheme(
//   headline1: TextStyle(
//     fontWeight: FontWeight.w700,
//     fontSize: 26,
//     height: 32 / 26,
//     letterSpacing: -0.02,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   headline2: TextStyle(
//     fontWeight: FontWeight.w700,
//     fontSize: 22,
//     height: 28 / 22,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   subtitle1: TextStyle(
//     fontWeight: FontWeight.w700,
//     fontSize: 20,
//     height: 24 / 20,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   subtitle2: TextStyle(
//     fontWeight: FontWeight.w600,
//     fontSize: 18,
//     height: 24 / 18,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   subtitle3: TextStyle(
//     fontWeight: FontWeight.w600,
//     fontSize: 16,
//     height: 20 / 16,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   body1: TextStyle(
//     fontWeight: FontWeight.w400,
//     fontSize: 16,
//     height: 20 / 16,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   body2: TextStyle(
//     fontWeight: FontWeight.w400,
//     fontSize: 14,
//     height: 20 / 14,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   body3: TextStyle(
//     fontWeight: FontWeight.w400,
//     fontSize: 14,
//     height: 20 / 14,
//     color: AppColors.white,
//     fontFamily: FontFamily.neueMachina,
//   ),
//   caption1: TextStyle(
//     fontWeight: FontWeight.w400,
//     fontSize: 16,
//     height: 20 / 16,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   caption2: TextStyle(
//     fontWeight: FontWeight.w400,
//     fontSize: 12,
//     height: 18 / 12,
//     color: AppColors.white,
//     fontFamily: FontFamily.neueMachina,
//   ),
//   caption: TextStyle(
//     fontWeight: FontWeight.w600,
//     fontSize: 12,
//     height: 16 / 12,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
//   captionLink: TextStyle(
//     fontWeight: FontWeight.w700,
//     fontSize: 12,
//     height: 18 / 12,
//     color: AppColors.white,
//     fontFamily: FontFamily.neueMachina,
//   ),
//   miniCaption: TextStyle(
//     fontWeight: FontWeight.w400,
//     fontSize: 10,
//     height: 12 / 10,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//     letterSpacing: 0.01,
//   ),
//   button: TextStyle(
//     fontWeight: FontWeight.w600,
//     fontSize: 10,
//     height: 20 / 10,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//     letterSpacing: 0.21,
//   ),
//   link: TextStyle(
//     fontWeight: FontWeight.w500,
//     fontSize: 14,
//     height: 20 / 14,
//     color: AppColors.white,
//     fontFamily: FontFamily.jost,
//   ),
// );
//
// class AppTextTheme {
//   const AppTextTheme({
//     required this.headline1,
//     required this.headline2,
//     required this.subtitle1,
//     required this.subtitle2,
//     required this.subtitle3,
//     required this.body1,
//     required this.body2,
//     required this.body3,
//     required this.caption1,
//     required this.caption2,
//     required this.caption,
//     required this.captionLink,
//     required this.miniCaption,
//     required this.button,
//     required this.link,
//   });
//
//   final TextStyle headline1;
//   final TextStyle headline2;
//   final TextStyle subtitle1;
//   final TextStyle subtitle2;
//   final TextStyle subtitle3;
//   final TextStyle body1;
//   final TextStyle body2;
//   final TextStyle body3;
//   final TextStyle caption1;
//   final TextStyle caption2;
//   final TextStyle caption;
//   final TextStyle captionLink;
//   final TextStyle miniCaption;
//   final TextStyle button;
//   final TextStyle link;
//
//   AppTextTheme apply({
//     String? fontFamily,
//     double fontSizeFactor = 1.0,
//     double fontSizeDelta = 0.0,
//     Color? textColor,
//     TextDecoration? decoration,
//     TextDecorationStyle? decorationStyle,
//   }) {
//     return AppTextTheme(
//       headline1: headline1.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       headline2: headline2.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       subtitle1: subtitle1.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       subtitle2: subtitle2.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       subtitle3: subtitle3.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       body1: body1.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       body2: body2.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       body3: body3.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       caption1: caption1.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       caption2: caption2.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       caption: caption.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       captionLink: captionLink.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       miniCaption: miniCaption.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       button: button.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//       link: link.apply(
//         color: textColor,
//         decoration: decoration,
//         decorationColor: textColor,
//         decorationStyle: decorationStyle,
//         fontFamily: fontFamily,
//         fontSizeFactor: fontSizeFactor,
//         fontSizeDelta: fontSizeDelta,
//       ),
//     );
//   }
// }
