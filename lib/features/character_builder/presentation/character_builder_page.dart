import 'package:flutter/material.dart';

class CharacterBuilderPage extends StatelessWidget {
  const CharacterBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'List of characters should be here',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
