import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// страница контейнер для роутинга
///
/// такое решение позволяет оставить навигацию внутри
/// подстраницы вместо того чтобы использовать коренной навигатор
class LibraryContainerPage extends StatelessWidget {
  const LibraryContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
