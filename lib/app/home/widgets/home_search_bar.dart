import 'package:chat_app/extension/context_extension.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_texts.dart';
import '../../../global/widgets/global_input_widget.dart';
import '../../../controllers/provider/home/home_provider.dart';
import '../../../theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = context.watch<HomeProvider>();
    return SizedBox(
      width: context.width,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 50,
            color: Theme.of(context).colorScheme.background,
            width: 79.w,
            child: GlobalInputWidget(
              isHome: true,
              onChanged: (query) {
                homeProvider.searchDatas(query);
              },
              isPassword: false,
              hintText: AppTexts.search,
              color: AppColors.black,
              isMessage: true,
            ),
          ),
           SizedBox(
            width: 10.w,
            child: IconButton(
              onPressed: () {
                homeProvider.changeAppBar();
              },
              icon: Icon(
                Icons.close,
                color: exColor(context),
              ),
            ),
          )
        ],
      ),
    );
  }
}
