import '../../chat/screen/chat_screen.dart';
import 'home_widget.dart';
import '../../../constants/app_navigators.dart';
import '../../../constants/app_texts.dart';
import '../../../data/model/home/home_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeSnapshotHasDataWidget extends StatelessWidget {
  final int index;
  final UsersModel chatDatas;
  final List<UsersModel> user;
  const HomeSnapshotHasDataWidget({
    super.key,
    required this.index,
    required this.chatDatas,
    required this.user,
  });

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    return HomeListTileWidget(
      onTap: () {
        // chatCubit.messagesToEnd();
        AppNavigator.go(
          ChatScreen(
            index: index,
          ),
          context,
        );
      },
      name: auth.currentUser!.email == user[index].email!
          ? AppTexts.you
          : chatDatas.username!,

      me: auth.currentUser!.email == user[index].email! ? true : false,

      // document: snapshot.data!.docs.last,
    );
  }
}
