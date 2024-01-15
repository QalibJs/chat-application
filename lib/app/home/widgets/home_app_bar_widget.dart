import 'package:chat_app/app/home/widgets/home_search_bar.dart';
import 'package:chat_app/app/home/widgets/home_top_icon_widget.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/controllers/cubit/home/home_search_bar_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/app_texts.dart';
import 'package:flutter/material.dart';


class HomeAppBarWidget extends StatelessWidget {
  const HomeAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    HomeSearchBarCubit homeCubit = context.watch<HomeSearchBarCubit>();
    return homeCubit.isSellectedSearchBar  
        ? const HomeSearchBar()
        : Row(
            children: <Widget>[
              Text(AppTexts.appName , style: AppTextStyle.appBar(context),),
              const Spacer(),
              const HomeTopIconWidget()
            ],
          );
  }
}
