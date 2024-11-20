import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/features/home/data/repos/home_repo.dart';
import 'package:my_movie/features/home/presentation/controller/latest_cubit/latest_state.dart';

class LatestMovieCubit extends Cubit<LatestMovieStates>{
  LatestMovieCubit(this.homeRepo) : super(LatestMovieInitialState());
 static  LatestMovieCubit get(context) => BlocProvider.of(context);

 final HomeRepo homeRepo;

 Future<void> latestMovieModel() async {
   var result = await homeRepo.fetchLatestMovie();

   result.fold((failure){
     emit(LatestMovieErrorState(failure.errorMessage));
   }, (model){
     emit(LatestMovieSuccessState(model));
   });
 }
}