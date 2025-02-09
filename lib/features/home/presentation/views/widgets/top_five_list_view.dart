import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_movie/core/widgets/custom_error_message.dart';
import 'package:my_movie/features/home/presentation/controller/top_five_cubit/top_five_cubit.dart';
import 'package:my_movie/features/home/presentation/controller/top_five_cubit/top_five_states.dart';
import 'package:my_movie/features/home/presentation/views/widgets/top_five_list_view_item.dart';

class TopFiveListView extends StatelessWidget {
  const TopFiveListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TopFiveCubit, TopFiveStates>(
      builder: (context, state) {
        if (state is TopFiveSuccessStates) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .350,
            child: ListView.builder(
              itemCount: state.movies.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 11.6,
                  ),
                  child: GestureDetector(
                    onTap: (){
                      print('top five pressed');
                    },
                    child: TopFiveListViewItem(
                      movieModel: state.movies[index],
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is TopFiveErrorStates) {
          return CustomErrorMessage(errMessage: state.errMessage);
        } else {
          return  const Center(child: CircularProgressIndicator(),);
        }
      },
    );
  }
}
