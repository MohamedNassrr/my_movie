import 'package:bloc/bloc.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';
import 'package:my_movie/features/home/presentation/controller/latest_movie_cubit/latest_movie_states.dart';

class LatestMovieCubit extends Cubit<LatestMovieStates> {
  LatestMovieCubit(this.homeRepo) : super(LatestMovieInitialStates());

  final HomeRepo homeRepo;

  Future<void> getLatestMovies() async {
    var result = await homeRepo.fetchLatestMovies();

    result.fold(
      (failure) => emit(
        LatestMovieErrorStates(failure.errorMessage),
      ),
      (movie) => emit(
        LatestMovieSuccessStates(movie),
      ),
    );
  }
}
