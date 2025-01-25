import 'package:flutter/material.dart';
import 'package:my_movie/core/utils/styles.dart';

class CustomErrorMessage extends StatelessWidget {
  const CustomErrorMessage({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Icon(
          Icons.error_outline,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          errMessage,
          style: Styles.textStyle18,

        ),
      ],
    );
  }
}
