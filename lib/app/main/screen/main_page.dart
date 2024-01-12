import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../controllers/cubit/main/main_cubit.dart';
import '../../../global/widgets/global_nav_bar.dart';
import '../../discover/screen/discover/discover_screen.dart';
import '../../home/screens/home_screen.dart';
import '../../offers/screen/offer_sreen.dart';
import '../../profile/screens/profile_screen.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    MainCubit mainCubit = context.watch<MainCubit>();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView(
                controller: mainCubit.controller,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  HomeScreen(),
                  DiscoverScreen(),
                  OfferScreen(),
                  ProfileScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: GlobalBottomNavBar(
        onTabChange: (index) {
          mainCubit.controller.jumpToPage(index);
        },
      ),
    );
  }
}
