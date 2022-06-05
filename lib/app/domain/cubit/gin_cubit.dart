import 'package:flutter_bloc/flutter_bloc.dart';

abstract class GinCubit<State> extends Cubit<State> {
  GinCubit(super.initialState);

  Future<void> init();
}
