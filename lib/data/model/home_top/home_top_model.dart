import '../../../constants/app_texts.dart';

class HomeTopModel {
  final String topText;

  HomeTopModel({required this.topText});

  static List<HomeTopModel> model = [
    HomeTopModel(topText: AppTexts.messages),
    HomeTopModel(topText: AppTexts.group),
  ];
}
