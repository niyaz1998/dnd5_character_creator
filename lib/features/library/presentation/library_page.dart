import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'List of compendium entries should be here',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
