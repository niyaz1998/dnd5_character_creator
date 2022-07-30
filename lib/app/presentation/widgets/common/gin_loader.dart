import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GinLoader extends StatelessWidget {
  const GinLoader({
    Key? key,
    this.alignment = Alignment.center,
  }) : super(key: key);

  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: SizedBox(
        height: 24.h,
        width: 24.w,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(
            Theme.of(context).colorScheme.primary,
          ),
          strokeWidth: 2,
        ),
      ),
    );
  }
}
