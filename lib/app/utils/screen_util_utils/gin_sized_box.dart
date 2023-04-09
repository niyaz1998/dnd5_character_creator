import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// Делает то же самое что и SizedBox, даже по коду выглядит так же
/// и комментарии похожи, но он лучше, он учитывет screen_util ^_^
class GinSizedBox extends SingleChildRenderObjectWidget {
  /// Creates a fixed size box. The [width] and [height] parameters can be null
  /// to indicate that the size of the box should not be constrained in
  /// the corresponding dimension.
  const GinSizedBox({Key? key, this.width, this.height, Widget? child})
      : super(key: key, child: child);

  /// Creates a box that will become as large as its parent allows.
  const GinSizedBox.expand({Key? key, Widget? child})
      : width = double.infinity,
        height = double.infinity,
        super(key: key, child: child);

  /// Creates a box that will become as small as its parent allows.
  const GinSizedBox.shrink({Key? key, Widget? child})
      : width = 0.0,
        height = 0.0,
        super(key: key, child: child);

  /// Creates a box with the specified size.
  GinSizedBox.fromSize({Key? key, Widget? child, Size? size})
      : width = size?.width,
        height = size?.height,
        super(key: key, child: child);

  /// Creates a box whose [width] and [height] are equal.
  const GinSizedBox.square({Key? key, Widget? child, double? dimension})
      : width = dimension,
        height = dimension,
        super(key: key, child: child);

  /// If non-null, requires the child to have exactly this width.
  final double? width;

  /// If non-null, requires the child to have exactly this height.
  final double? height;

  @override
  RenderConstrainedBox createRenderObject(BuildContext context) {
    return RenderConstrainedBox(
      additionalConstraints: _additionalConstraints,
    );
  }

  BoxConstraints get _additionalConstraints {
    return BoxConstraints.tightFor(width: width?.w, height: height?.h);
  }

  @override
  void updateRenderObject(
      BuildContext context, RenderConstrainedBox renderObject) {
    renderObject.additionalConstraints = _additionalConstraints;
  }

  @override
  String toStringShort() {
    final String type;
    if (width == double.infinity && height == double.infinity) {
      type = '${objectRuntimeType(this, 'GinSizedBox')}.expand';
    } else if (width == 0.0 && height == 0.0) {
      type = '${objectRuntimeType(this, 'GinSizedBox')}.shrink';
    } else {
      type = objectRuntimeType(this, 'GinSizedBox');
    }
    return key == null ? type : '$type-$key';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    final DiagnosticLevel level;
    if ((width == double.infinity && height == double.infinity) ||
        (width == 0.0 && height == 0.0)) {
      level = DiagnosticLevel.hidden;
    } else {
      level = DiagnosticLevel.info;
    }
    properties
        .add(DoubleProperty('width', width, defaultValue: null, level: level));
    properties.add(
        DoubleProperty('height', height, defaultValue: null, level: level));
  }
}
