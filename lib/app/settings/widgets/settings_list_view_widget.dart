import 'package:chat_app/extension/context_extension.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../constants/app_paddings.dart';
import '../../../constants/app_sized_box.dart';
import '../../../controllers/cubit/auth/auth_cubit.dart';
import '../../../controllers/cubit/onboard/onboard_cubit.dart';
import '../../../controllers/cubit/profile/profile_cubit.dart';
import '../../../data/model/settings/settings_model.dart';
import '../../../global/widgets/global_reset_password.dart';
import '../../../global/widgets/global_snackbar.dart';
import '../../../helper/helper.dart';
import 'settings_list_tile_widget.dart';

class SettingsListViewWidget extends StatelessWidget {
  const SettingsListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<SettingsModel> settingsModel = SettingsModel.settingsModel;
    ProfileCubit profileCubit = context.read<ProfileCubit>();
    OnboardCubit onboardCubit = context.read<OnboardCubit>();
    AuthCubit authCubit = context.read<AuthCubit>();
    FirebaseAuth auth = FirebaseAuth.instance;
    return Expanded(
      child: Container(
        decoration: AppBoxDecorations.profileItemsBoxDecoration(context),
        width: context.width,
        child: ListView.builder(
          padding: AppPaddings.all6.copyWith(left: 0, right: 0),
          physics: const NeverScrollableScrollPhysics(),
          itemCount: settingsModel.length,
          itemBuilder: (context, index) {
            final datas = settingsModel[index];
            return Column(
              children: [
                index == 0 ? AppSizedBox.h40 : const SizedBox.shrink(),
                GestureDetector(
                  onTap: () {
                    ifs(
                      context,
                      index,
                      authCubit,
                      auth,
                      profileCubit,
                      onboardCubit,
                    );
                  },
                  child: SettingsListTileWidget(
                    icon: datas.icon,
                    text: datas.text,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void ifs(context, index, authCubit, auth, settingsCubit, onboardCubit) {
    if (index == 0) {
      GlobalResetPassword.showdialog(
        context,
        AppColors.green,
        authCubit.resetController,
        FirebaseAuth.instance.currentUser!.email!,
        false,
        auth,
      );
    }
    if (index == 1) {
      try {
        Helper.showDeleteAccountDialog(context, onboardCubit);
      } on FirebaseAuthException catch (e) {
        GlobalSnackBar.showErrorSnackkbar(
          context,
          e.message,
        );
      }
    }
    if (index == 2) {
      try {
        Helper.showLogOutDialog(
          context,
          settingsCubit,
          authCubit,
        );
      } on FirebaseException catch (e) {
        GlobalSnackBar.showErrorSnackkbar(context, e);
      }
    }
  }
}
