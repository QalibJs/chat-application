import 'home_error_widget.dart';
import 'home_snapshot_has_data_widget.dart';
import '../../../controllers/cubit/home/home_cubit.dart';
import '../../../global/widgets/global_warning_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_texts.dart';
import '../../../data/model/home/home_model.dart';
import '../../../data/service/chat/chat_service.dart';

class HomeListViewWidget extends StatelessWidget {
  final List<UsersModel> user;
  final dynamic state;
  const HomeListViewWidget({
    super.key,
    required this.user,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    ChatService chatProvider = ChatService();
    HomeCubit homeCubit = context.watch<HomeCubit>();
    Future<void> onRefresh() async {
      homeCubit.fetchDatas();
      return await Future.delayed(const Duration(milliseconds: 700));
    }
    try {
      return Expanded(
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: LiquidPullToRefresh(
            color: Theme.of(context).colorScheme.background,
            backgroundColor: AppColors.backgroundColor,
            springAnimationDurationInMilliseconds: 100,
            onRefresh: onRefresh,
            child: ListView.builder(
              itemCount: user.length,
              itemBuilder: (context, index) {
                UsersModel chatDatas = user[index];
                return StreamBuilder(
                  stream: chatProvider.getMessage(
                      state.usersModel[index].uid, auth.currentUser!.uid),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return HomeSnapshotHasDataWidget(
                        index: index,
                        chatDatas: chatDatas,
                        user: user,
                      );
                    }
                    if (snapshot.hasError) {
                      return GlobalWarningWidget(
                        text: "${AppTexts.error} təkrar yoxlayın...",
                      );
                    }
                    return const SizedBox.shrink();
                  },
                );
              },
            ),
          ),
        ),
      );
    } on FirebaseException catch (e) {
      debugPrint(e.message);
      return const HomeErrorWidget();
    }
  }
}
