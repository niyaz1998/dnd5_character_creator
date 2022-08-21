import 'package:flutter/material.dart';

import '../../../utils/screen_util_utils/gin_sized_box.dart';

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
      child: GinSizedBox(
        height: 24,
        width: 24,
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
