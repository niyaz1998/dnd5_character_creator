import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/cubit/gin_base_cubit.dart';
import '../../../domain/model/async_field.dart';

class AsyncFieldBuilder<B extends GinBaseCubit<S>, S, D> extends StatelessWidget {
  const AsyncFieldBuilder({
    Key? key,
    required this.fieldGetter,
    required this.dataBuilder,
  }) : super(key: key);

  final AsyncField<D> Function(S) fieldGetter;
  final Widget Function(D) dataBuilder;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<B, S>(
      builder: (context, state) {
        return fieldGetter(state).whenCommon(
          onRefreshPressed: BlocProvider.of<B>(context).init,
          onData: dataBuilder,
        );
      },
    );
  }
}
