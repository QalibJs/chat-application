import 'package:chat_app/app/discover/screen/send%20offer/send_offer_screen.dart';

import '../../../../controllers/cubit/offer/offer_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../constants/app_navigators.dart';
import '../../../../constants/app_texts.dart';
import '../../../../data/model/home/home_model.dart';
import '../../../profile/screens/profile_screen.dart';
import '../discover%20widgets/discover_list_tile_widget.dart';

class DiscoverListViewWidget extends StatelessWidget {
  final List<UsersModel> user;
  final dynamic state;
  const DiscoverListViewWidget({
    super.key,
    required this.user,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    OfferCubit offerCubit = context.watch<OfferCubit>();
    return Container(
      color: Theme.of(context).colorScheme.background,
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: user.length,
        itemBuilder: (context, index) {
          final chatDatas = user[index];
          return DiscoverListTileWidget(
            onTap: () {
              offerCubit.getOfferItems(state.usersModel[index].uid!);
              if (chatDatas.uid == auth.currentUser!.uid) {
                AppNavigator.go(const ProfileScreen(), context);
              } else {
                final currentUser = user.firstWhere(
                  (user) => user.uid == auth.currentUser!.uid,
                );
                AppNavigator.go(
                  SendOfferScreen(
                    receiverUsername: chatDatas.username!,
                    receiverBio: chatDatas.bio!,
                    senderBio: currentUser.bio!,
                    receiverID: chatDatas.uid!,
                    senderUsername: currentUser.username!,
                    email: chatDatas.email!,
                  ),
                  context,
                );
              }
            },
            name: auth.currentUser!.email == user[index].email!
                ? AppTexts.you
                : chatDatas.username!,
          );
        },
      ),
    );
  }
}
