import 'package:bloc/bloc.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';
import 'package:my_movie/features/home/presentation/controller/top_five_cubit/top_five_states.dart';

class TopFiveCubit extends Cubit<TopFiveStates> {
  TopFiveCubit(this.homeRepo) : super(TopFiveInitialStates());

  final HomeRepo homeRepo;

  Future<void> getTopFive() async {
    emit(TopFiveLoadingStates());
    var result = await homeRepo.fetchTopFiveMovies();

    result.fold(
      (failure) => emit(
        TopFiveErrorStates(
          failure.errorMessage.toString(),
        ),
      ),
      (movies) => emit(
        TopFiveSuccessStates(movies),
      ),
    );
  }
}
