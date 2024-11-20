import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/features/book_mark/presentation/views/bookmark_view.dart';
import 'package:my_movie/features/home/presentation/controller/home_cubit/state.dart';
import 'package:my_movie/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:my_movie/features/search/presentation/views/search_view.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of(context);


  int currentIndex = 0;

  List<Widget> screens = [
    const HomeViewBody(),
    const SearchView(),
    const BookmarkView(),

  ];

  List<BottomNavigationBarItem> bottomItems =[
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.search_rounded,
      ),
      label: '',
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.bookmark_outline_sharp,
      ),
      label: '',

    ),
  ];

  void changeBotNavBar(int index){
    currentIndex = index;
    if(index == 1)
      SearchView();
    if(index == 2)
      BookmarkView();

    emit(HomeChangeBotNavBarState());
  }
}