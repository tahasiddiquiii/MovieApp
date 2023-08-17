import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:test_flutter/data/core/api_client.dart';
import '../../../../common/constants/size_constants.dart';
import '../../../../common/extensions/size_extensions.dart';

import '../../../../domain/entities/movie_entity.dart';
import 'movie_tab_card_widget.dart';

class MovieListViewBuilder extends StatefulWidget {
  final List<MovieEntity> movies;

  final apiClient = ApiClient(Client());

  MovieListViewBuilder({Key? key, required this.movies}) : super(key: key);

  @override
  State<MovieListViewBuilder> createState() => _MovieListViewBuilderState();
}

class _MovieListViewBuilderState extends State<MovieListViewBuilder> {
  final scrollController = ScrollController();
  List posts = [];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Sizes.dimen_6.h),
      child: ListView.separated(
        controller: scrollController,
        shrinkWrap: true,
        itemCount: widget.movies.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            width: Sizes.dimen_14.w,
          );
        },
        itemBuilder: (context, index) {
          final MovieEntity movie = widget.movies[index];
          return MovieTabCardWidget(
            movieId: movie.id,
            title: movie.title,
            posterPath: movie.posterPath,
          );
        },
      ),
    );
  }

  void _scrollListener() {
    if (scrollController.position.pixels ==
        scrollController.position.maxScrollExtent) {
      widget.apiClient.page = widget.apiClient.page + 1;

      print('scroll listener is callled ${widget.apiClient.page}');
    } else {
      print('dont call');
    }
  }
}
