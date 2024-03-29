import 'package:chat_app/app/profile/widgets/profile_edit_icon.dart';
import 'package:chat_app/app/profile/widgets/profile_photo_widget.dart';
import 'package:chat_app/app/profile/widgets/profile_user_datas_widget.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import '../../../constants/app_sized_box.dart';

class ProfileTopWidget extends StatelessWidget {
  const ProfileTopWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: SafeArea(
        child: Padding(
          padding: AppPaddings.all12,
          child: Column(
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ProfilePhotoWidget(),
                  AppSizedBox.w10,
                  const ProfileUserDatasWidget(),
                  const Spacer(),
                  const ProfileEditIcon(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
