class UserInfoModel {
  String text;

  UserInfoModel({
    required this.text,
  });

  static List<UserInfoModel> users = [
    UserInfoModel(
      text: "bio",
    ),
    UserInfoModel(
      text: "username",
    ),
    UserInfoModel(
      text: "uid",
    ),
    UserInfoModel(
      text: "email",
    ),
  ];
}
