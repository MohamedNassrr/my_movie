import 'package:flutter/material.dart';
import 'package:my_movie/features/home/data/models/movie_models/movie_model.dart';
import 'package:my_movie/features/home/presentation/views/widgets/latest_list_view_detail_item.dart';

class LatestListViewItem extends StatelessWidget {
  const LatestListViewItem({super.key, required this.movieModel});
  final MovieModel movieModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width * .476,
          height: MediaQuery.of(context).size.height * .35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image:  DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                'https://image.tmdb.org/t/p/w500${movieModel.posterPath}',
              ),
            ),
          ),
          child: ClipPath(
            child: Align(
              alignment: AlignmentDirectional.topEnd,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.bookmark_outline_sharp,
                  size: 32,
                  color: Colors.amber,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
         LatestListViewDetailItem(
           movieModel: movieModel,
         ),
      ],
    );
  }
}
