import 'package:chat_app/app/offers/widgets/offer_custom_button_widget.dart';
import 'package:chat_app/app/offers/widgets/offer_empty_widget.dart';
import 'package:chat_app/app/offers/widgets/offer_pp_image_widget.dart';
import 'package:chat_app/constants/app_colors.dart';
import 'package:chat_app/constants/app_paddings.dart';
import 'package:chat_app/constants/app_sized_box.dart';
import 'package:chat_app/constants/app_text_styles.dart';
import 'package:chat_app/extension/context_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class OfferItemWidget extends StatelessWidget {
  final QueryDocumentSnapshot<Object?>? document;

  const OfferItemWidget({super.key, this.document});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = document!.data() as Map<String, dynamic>;
    dynamic username = data['username'];
    dynamic bio = data['bio'];
    dynamic email = data['email'];
    return data.isEmpty
        ? const OfferEmptyWidget()
        : Padding(
            padding: AppPaddings.all12,
            child: Container(
              padding: AppPaddings.all2,
              width: context.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color:
                    Theme.of(context).colorScheme.background == AppColors.black
                        ? AppColors.black4
                        : AppColors.grey,
              ),
              child: Padding(
                padding: AppPaddings.all12,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const OfferPpImageWidget(),
                    AppSizedBox.w10,
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(username , style: AppTextStyle.blackHardText(context),),
                        Text(email, style: AppTextStyle.blackHardText(context),),
                        Text(bio, style: AppTextStyle.blackHardText(context),),
                        const Row(
                          children: [
                            OfferCustomButtonWidget(isCheck: true,),
                            OfferCustomButtonWidget(isCheck: false,),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
