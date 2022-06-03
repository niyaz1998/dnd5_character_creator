import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'List of settings should be here',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
