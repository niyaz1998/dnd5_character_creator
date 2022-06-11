import 'package:flutter/material.dart';

class GinErrorBuilder extends StatelessWidget {
  const GinErrorBuilder({
    Key? key,
    required this.refreshReasonKey,
    required this.onRefreshPressed,
    this.buttonTextKey = 'Обновить',
    this.mainAxisSize = MainAxisSize.max,
  }) : super(key: key);

  final VoidCallback onRefreshPressed;
  final String refreshReasonKey;
  final String buttonTextKey;
  final MainAxisSize mainAxisSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: mainAxisSize,
      children: [
        Text(
          refreshReasonKey,
          style: Theme.of(context).textTheme.titleSmall,
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: onRefreshPressed,
          child: Text(buttonTextKey),
        ),
      ],
    );
  }
}
