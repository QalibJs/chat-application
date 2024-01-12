import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

import '../../../constants/app_colors.dart';
import '../../../constants/app_decorated_box.dart';
import '../../../controllers/cubit/edit/edit_cubit.dart';

class EditProfilePhotoWidget extends StatelessWidget {
  const EditProfilePhotoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    EditCubit editCubit = context.watch<EditCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              width: 12.2.h,
              height: 12.2.h,
              decoration: AppBoxDecorations.br50(AppColors.darkGrey),
              child: Center(
                child: Icon(
                  Icons.person_rounded,
                  size: 11.h,
                  color: AppColors.white,
                ),
              ),
            ),
            Positioned(
              child: GestureDetector(
                onTap: () {
                  editCubit.pickImage();
                },
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: AppBoxDecorations.br12(
                    AppColors.simpleBlue,
                  ),
                  child: Center(
                    child: Icon(
                      Icons.add_a_photo_outlined,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
