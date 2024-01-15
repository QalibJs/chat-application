import 'package:chat_app/app/settings/widgets/settings_list_tile.dart';
import 'package:chat_app/data/model/profile/profile_model.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';

class SettingsListView extends StatelessWidget {
  const SettingsListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProfileModel> profileModel = ProfileModel.profileModel;
    return SizedBox(
      height: context.height,
      width: context.width,
      child: ListView.builder(
        itemCount: profileModel.length,
        itemBuilder: (context, index) {
          final datas = profileModel[index];
          return  SettingsListTile(
            account: datas.title, index: index,
          );
        },
      ),
    );
  }
}
