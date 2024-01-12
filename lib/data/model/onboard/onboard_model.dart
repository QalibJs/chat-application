import '../../../constants/app_assets.dart';
import '../../../constants/app_texts.dart';

class OnboardModel {
  String image;
  String text;
  OnboardModel({
    required this.image,
    required this.text,
  });

  static List<OnboardModel> onboard = [
    OnboardModel(image: AppAssets.chat1, text: AppTexts.onboard1),
    OnboardModel(image: AppAssets.chat, text: AppTexts.onboard3),
    OnboardModel(image: AppAssets.chatBox, text: AppTexts.onboard2),
  ];
}
