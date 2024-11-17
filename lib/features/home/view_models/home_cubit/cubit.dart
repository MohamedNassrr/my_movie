import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:my_movie/features/home/view_models/home_cubit/state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;

  List<Widget> screens = [
    const HomeViewBody(),

  ];

  List<BottomNavigationBarItem> bottomItems =[
    BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.search_rounded,
      ),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(
        Icons.bookmark_outline_sharp,
      ),
      label: '',

    ),
  ];

  void changeBotNavBar(int index){
    currentIndex = index;
    // if(index == 1)
    //   BookMark();
    // if(index == 2)
    //   Search();

    emit(HomeChangeBotNavBarState());
  }
}