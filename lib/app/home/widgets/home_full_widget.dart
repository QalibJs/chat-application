import 'home_bloc_builder_widget.dart';
import 'home_top_widget.dart';
import 'package:flutter/material.dart';

class HomeFullWidget extends StatelessWidget {
  const HomeFullWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeTopWidget(),
        // HomeStoryListViewWidget(),
        HomeListWidget(),
      ],
    );
  }
}
