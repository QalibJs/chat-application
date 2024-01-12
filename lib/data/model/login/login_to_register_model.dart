import '../../../constants/app_texts.dart';

class LoginToRegisterModel {
  String text;
  LoginToRegisterModel({
    required this.text,
  });
  static List<LoginToRegisterModel> texts = [
    LoginToRegisterModel(text: AppTexts.login),
    LoginToRegisterModel(text: AppTexts.register),
  ];
}
