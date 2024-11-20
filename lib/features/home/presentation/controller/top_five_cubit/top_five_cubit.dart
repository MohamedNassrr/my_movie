import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';
import 'package:my_movie/features/home/presentation/controller/top_five_cubit/top_five_state.dart';

class TopFiveMovieCubit extends Cubit<TopFiveStates>{
  TopFiveMovieCubit(this.homeRepo) : super(TopFiveInitialState());

  static TopFiveMovieCubit get(context) => BlocProvider.of(context);

  final HomeRepo homeRepo;

  Future<void> topFiveMovieModel() async {
    emit(TopFiveLoadingState());

   var result = await homeRepo.fetchTopFiveMovie();
   result.fold((failure) {
     emit(TopFiveErrorState(failure.errorMessage));
   }, (model){
     emit(TopFiveSuccessState(model));
   });
  }
}