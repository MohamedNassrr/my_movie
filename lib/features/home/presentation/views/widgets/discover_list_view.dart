import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/core/widgets/custom_error_message.dart';
import 'package:my_movie/features/home/presentation/controller/discover_movie_cubit/discover_movie_cubit.dart';
import 'package:my_movie/features/home/presentation/controller/discover_movie_cubit/discover_movie_states.dart';
import 'package:my_movie/features/home/presentation/views/widgets/discover_list_view_item.dart';

class DiscoverListView extends StatelessWidget {
  const DiscoverListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverMovieCubit, DiscoverMovieStates>(
      builder: (context, state) {
        if (state is DiscoverMovieSuccessStates) {
          return SizedBox(
            height: 20,
            child: ListView.builder(
              itemCount: state.movies.length,
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: GestureDetector(
                    onTap: () {},
                    child:  const DiscoverListViewItem(),
                  ),
                );
              },
            ),
          );
        } else if (state is DiscoverMovieErrorStates) {
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
