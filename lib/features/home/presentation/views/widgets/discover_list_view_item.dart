import 'package:flutter/material.dart';

class DiscoverListViewItem extends StatelessWidget {
  const DiscoverListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 54,
          height: 25,
          decoration: BoxDecoration(
              color: const Color(0xff2A2A2A),
              borderRadius: BorderRadius.circular(28)),
          child: Center(
            child: Text(
              'All'.toUpperCase(),
            ),
          ),
        ),
      ],
    );
  }
}
