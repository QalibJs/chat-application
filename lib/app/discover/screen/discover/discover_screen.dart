import 'package:flutter/material.dart';
import '../../../home/widgets/home_app_bar_widget.dart';
import '../../widgets/discover%20widgets/discover_bloc_builder_widget.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        title: const HomeAppBarWidget(),
      ),
      body: const Column(
        children: <Widget>[
          DiscoverBlocBuilderWidget(),
        ],
      ),
    );
  }
}
