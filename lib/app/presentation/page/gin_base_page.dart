import 'package:flutter/material.dart';

abstract class GinBasePage extends StatelessWidget {
  const GinBasePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => buildProviders(
        Builder(builder: buildPageContent),
      ),
    );
  }

  Widget buildProviders(Widget child);

  Widget buildPageContent(BuildContext context);
}
