import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/styles.dart';

class LatestListViewDetailItem extends StatelessWidget {
  const LatestListViewDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Column(
        children: [
          const Row(
            children: [
              Flexible(
                child: Text(
                  'Hitman’s Wife’s Bodyguard',
                  style: Styles.textStyle19,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                '3.5',
                style: Styles.textStyle18,
              ),
              SizedBox(
                width: 9,
              ),
              Icon(
                Icons.star,
                color: Colors.amber,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                'Action',
                style: Styles.textStyle13,
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Flexible(
                child: Text(
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  'The world\'s most lethal odd couple - bodyguard Michael Bryce and hitman Darius Kincaid - are back on another',
                  style: Styles.textStyle13.copyWith(
                    color: const Color(0xff888888),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
