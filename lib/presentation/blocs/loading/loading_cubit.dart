// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';

class LoadingCubit extends Cubit<bool> {
  LoadingCubit() : super(false);

  void show() => emit(true);

  void hide() => emit(false);
}
