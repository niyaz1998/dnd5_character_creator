import 'package:flutter/material.dart';

class GinLoader extends StatelessWidget {
  final Alignment alignment;

  const GinLoader({
    Key? key,
    this.alignment = Alignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: SizedBox(
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
