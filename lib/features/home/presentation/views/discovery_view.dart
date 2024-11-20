import 'package:flutter/material.dart';
import 'package:my_movie/features/home/presentation/views/widgets/discover_view_body.dart';

class DiscoveryView extends StatelessWidget {
  const DiscoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: DiscoveryViewBody(),
      ),
    );
  }
}
