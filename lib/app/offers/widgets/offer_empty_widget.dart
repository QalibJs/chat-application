import 'package:chat_app/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OfferEmptyWidget extends StatelessWidget {
  const OfferEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.error , color: AppColors.white,),
        // Text("You have a error")
      ],
    );
  }
}
