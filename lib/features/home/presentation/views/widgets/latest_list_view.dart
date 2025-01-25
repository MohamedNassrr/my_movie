import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/core/widgets/custom_error_message.dart';
import 'package:my_movie/features/home/presentation/controller/latest_movie_cubit/latest_movie_cubit.dart';
import 'package:my_movie/features/home/presentation/controller/latest_movie_cubit/latest_movie_states.dart';
import 'package:my_movie/features/home/presentation/views/widgets/latest_list_view_item.dart';

class LatestListView extends StatelessWidget {
  const LatestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LatestMovieCubit, LatestMovieStates>(
      builder: (context, state) {
        if (state is LatestMovieSuccessStates) {
          return ListView.builder(
            itemCount: 10,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 9.6,
                ),
                child: LatestListViewItem(
                  movieModel: state.movie[index],
                ),
              );
            },
          );
        } else if (state is LatestMovieErrorStates) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
