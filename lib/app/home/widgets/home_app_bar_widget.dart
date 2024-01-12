import 'package:chat_app/app/home/widgets/home_search_bar.dart';
import 'package:chat_app/controllers/provider/home/home_provider.dart';
import '../../../theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = context.read<HomeProvider>();
    return homeProvider.sellectedSearchBar  
        ? const HomeSearchBar()
        : Row(
            children: [
              Text(AppTexts.appName),
              const Spacer(),
              IconButton(
                onPressed: () {
                  homeProvider.changeAppBar();
                },
                icon: Icon(
                  Icons.search_rounded,
                  color: exColor(context),
                  size: 20.sp,
                ),
              )
            ],
          );
  }
}
