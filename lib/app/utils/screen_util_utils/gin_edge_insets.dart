import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class GinEdgeInsets {
  /// НЕ использовать для добавления радиуса
  /// .r - использует минимальное значение между шириной и высотой
  /// если просто использовать его то он отработает не верно
  static EdgeInsets all(double value) {
    return EdgeInsets.symmetric(
      horizontal: value.w,
      vertical: value.h,
    );
  }

  static EdgeInsets radius(double value) {
    return EdgeInsets.all(value.r);
  }

  static EdgeInsets fromLTRB(
    double left,
    double top,
    double right,
    double bottom,
  ) {
    return EdgeInsets.fromLTRB(
      left.w,
      top.h,
      right.w,
      bottom.h,
    );
  }

  static EdgeInsets only({
    double? left,
    double? top,
    double? right,
    double? bottom,
  }) {
    return EdgeInsets.only(
      left: left?.w ?? 0,
      top: top?.h ?? 0,
      right: right?.w ?? 0,
      bottom: bottom?.h ?? 0,
    );
  }

  static EdgeInsets zero = EdgeInsets.zero;

  static EdgeInsets symmetric({
    double? vertical,
    double? horizontal,
  }) {
    return EdgeInsets.symmetric(
        vertical: vertical?.h ?? 0, horizontal: horizontal?.w ?? 0);
  }
}
