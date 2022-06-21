import 'package:flutter/material.dart';

class GinSeparatedColumn extends StatelessWidget {
  const GinSeparatedColumn({
    Key? key,
    required this.itemCount,
    required this.itemBuilder,
    required this.separatorHeight,
  }) : super(key: key);

  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final double separatorHeight;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
      separatorBuilder: (context, index) => SizedBox(height: separatorHeight),
    );
  }
}
