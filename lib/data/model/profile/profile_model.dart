import 'package:chat_app/constants/app_texts.dart';

class ProfileModel {
  final String title;

  ProfileModel({required this.title});
  static List<ProfileModel> profileModel = [
    ProfileModel(title: AppTexts.account),
    ProfileModel(title: AppTexts.about),

  ];
}
