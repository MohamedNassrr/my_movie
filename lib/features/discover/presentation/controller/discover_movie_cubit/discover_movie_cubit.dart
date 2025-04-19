import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:my_movie/features/discover/presentation/controller/discover_movie_cubit/discover_movie_states.dart';
import 'package:my_movie/features/discover/presentation/views/fantasy_view.dart';
import 'package:my_movie/features/discover/presentation/views/horror_view.dart';
import 'package:my_movie/features/discover/presentation/views/action_view.dart';
import 'package:my_movie/features/discover/presentation/views/comedy_view.dart';
import 'package:my_movie/features/discover/presentation/views/family_view.dart';
import 'package:my_movie/features/discover/presentation/views/war_view.dart';
import 'package:my_movie/features/discover/presentation/views/widgets/discover_view_body.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';

class DiscoverMovieCubit extends Cubit<DiscoverMovieStates> {
  DiscoverMovieCubit(this.homeRepo) : super(DiscoverMovieInitialStates());

  final HomeRepo homeRepo;

  Future<void> getDiscoverMovie() async {
    var result = await homeRepo.fetchDiscoverMovies();

    result.fold(
      (failure) => emit(
        DiscoverMovieErrorStates(failure.errorMessage),
      ),
      (movie) => emit(
        DiscoverMovieSuccessStates(movie),
      ),
    );
  }

  List<Widget> tabBarItem =[
    const Text('All'),
    const Text('Action'),
    const Text('Comedy'),
    const Text('Horror'),
    const Text('Family'),
    const Text('Fantasy'),
    const Text('War'),
  ];

  List<Widget> tabBarScreens = [
    const DiscoveryViewBody(),
    const ActionView(),
    const ComedyView(),
    const HorrorView(),
    const FamilyView(),
    const FantasyView(),
    const WarView(),
  ];
}
