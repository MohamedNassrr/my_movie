import 'package:bloc/bloc.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';
import 'package:my_movie/features/home/presentation/controller/discover_movie_cubit/discover_movie_states.dart';

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
}
