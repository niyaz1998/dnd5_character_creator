import 'package:flutter/material.dart';

import '../../presentation/widgets/common/error_builder.dart';
import '../../presentation/widgets/common/gin_loader.dart';
import 'gin_error.dart';

typedef FieldUpdater<T> = void Function(AsyncField<T> field);

class AsyncField<T> {
  const AsyncField.nothing({
    this.inProgress = false,
    this.data,
    this.error,
  });

  const AsyncField.data(
    this.data, {
    this.inProgress = false,
    this.error,
  });

  const AsyncField.progress({
    this.inProgress = true,
    this.data,
    this.error,
  });

  const AsyncField.error(
    this.error, {
    this.inProgress = false,
    this.data,
  });

  static Future<T?> execute<T>(
    Future<T> task, {
    required FieldUpdater<T> updater,
    bool noProgress = false,
  }) async {
    if (!noProgress) {
      updater(const AsyncField.progress());
    }
    try {
      var data = await task;
      updater(AsyncField.data(data));
      return data;
    } catch (error) {
      updater(AsyncField.error(GinError(rawError: error)));
    }
    return null;
  }

  final T? data;

  final GinError? error;

  final bool inProgress;

  bool get hasData => data != null;

  bool get hasError => error != null;

  Widget when({
    required Widget Function() inProgress,
    required Widget Function(T data) onData,
    required Widget Function(GinError error) onError,
  }) {
    if (hasError) {
      return onError(error!);
    }
    if (hasData) {
      return onData(data as T);
    }
    return inProgress();
  }

  Widget whenCommon({
    required Widget Function(T data) onData,
    required VoidCallback onRefreshPressed,
    Widget Function()? inProgress,
  }) {
    if (hasError) {
      return ErrorBuilder(
        onRefreshPressed: onRefreshPressed,
        refreshReasonKey: error!.rawError.toString(),
      );
    }
    if (hasData) {
      return onData(data as T);
    }
    return inProgress?.call() ?? const GinLoader();
  }
}
