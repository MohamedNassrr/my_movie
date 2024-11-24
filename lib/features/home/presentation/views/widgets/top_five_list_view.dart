import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/core/widgets/custom_error_message.dart';
import 'package:my_movie/features/home/presentation/controller/top_five_cubit/top_five_cubit.dart';
import 'package:my_movie/features/home/presentation/controller/top_five_cubit/top_five_state.dart';
import 'package:my_movie/features/home/presentation/views/widgets/top_five_list_view_item.dart';
import 'package:skeletonizer/skeletonizer.dart';

class TopFiveListView extends StatelessWidget {
  const TopFiveListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopFiveMovieCubit, TopFiveStates>(
      builder: (context, state) {
        if(state is TopFiveSuccessState){
          return SizedBox(
            height: MediaQuery.of(context).size.height * .350,
            child: ListView.builder(
              itemCount: 5,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.6,
                  ),
                  child: TopFiveListViewItem(),
                );
              },
            ),
          );
        }else if(state is TopFiveErrorState){
          return CustomErrorMessage(errMessage: state.errMessage);
        }else{
          return const Skeletonizer(
            child: TopFiveListViewItem(),
          );
        }
      },
    );
  }
}
