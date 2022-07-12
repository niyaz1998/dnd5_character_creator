import 'package:flutter_bloc/flutter_bloc.dart';

abstract class GinBaseCubit<State> extends Cubit<State> {
  GinBaseCubit(super.initialState);

  Future<void> init();
}
