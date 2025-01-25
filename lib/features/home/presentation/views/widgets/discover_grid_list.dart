import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/core/utils/styles.dart';
import 'package:my_movie/core/widgets/custom_error_message.dart';
import 'package:my_movie/features/home/presentation/controller/discover_movie_cubit/discover_movie_cubit.dart';
import 'package:my_movie/features/home/presentation/controller/discover_movie_cubit/discover_movie_states.dart';

class DiscoverGridList extends StatelessWidget {
  const DiscoverGridList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiscoverMovieCubit,DiscoverMovieStates>(
      builder: (context, state) {
        if(state is DiscoverMovieSuccessStates){
          return GridView.count(
            crossAxisSpacing: 15,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            childAspectRatio: 2 / 4.352,
            crossAxisCount: 2,
            children: List.generate(
              state.movies.length,
                  (index) => GestureDetector(
                onTap: () {
                  print('list pressed');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .476,
                      height: MediaQuery.of(context).size.height * .35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image:  DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            'https://image.tmdb.org/t/p/w500${state.movies[index].posterPath}',
                          ),
                        ),
                      ),
                      child: ClipPath(
                        child: Align(
                          alignment: AlignmentDirectional.topEnd,
                          child: IconButton(
                            onPressed: () {
                              print('pressed');
                            },
                            icon: const Icon(
                              Icons.bookmark_outline_sharp,
                              size: 32,
                              color: Colors.amber,
                            ),
                          ),
                        ),
                      ),
                    ),
                     Text(
                      state.movies[index].originalTitle,
                      style: Styles.textStyle18,
                       maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                    ),
                     Row(
                      children: [
                        Text(
                          '${state.movies[index].voteAverage}',
                          style: Styles.textStyle18,
                        ),
                        const SizedBox(
                          width: 9,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }else if(state is DiscoverMovieErrorStates){
          return CustomErrorMessage(errMessage: state.errMessage);
        }else{
          return const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
