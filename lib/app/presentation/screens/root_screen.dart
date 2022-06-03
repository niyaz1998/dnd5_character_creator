import 'package:flutter/material.dart';

import '../../../l10n/generated/app_localizations.dart';

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.blue,
      width: 100,
      height: 100,
      child: Text(AppLocalizations.of(context)!.helloWorld),
    ));
  }
}
