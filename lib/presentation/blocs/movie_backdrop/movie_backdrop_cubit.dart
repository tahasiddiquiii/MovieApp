// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';

import '../../../domain/entities/movie_entity.dart';

class MovieBackdropCubit extends Cubit<MovieEntity?> {
  MovieBackdropCubit() : super(null);

  void backdropChanged(MovieEntity movie) {
    emit(movie);
  }
}
