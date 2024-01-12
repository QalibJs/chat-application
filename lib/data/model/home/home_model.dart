import 'dart:convert';

UsersModel temperaturesFromJson(String str) => UsersModel.fromJson(json.decode(str));

String temperaturesToJson(UsersModel data) => json.encode(data.toJson());

class UsersModel {
    String? bio;
    String? email;
    String? uid;
    String? username;

    UsersModel({
        this.bio,
        this.email,
        this.uid,
        this.username,
    });

    factory UsersModel.fromJson(Map<String, dynamic> json) => UsersModel(
        bio: json["bio"],
        email: json["email"],
        uid: json["uid"],
        username: json["username"],
    );

    Map<String, dynamic> toJson() => {
        "bio": bio,
        "email": email,
        "uid": uid,
        "username": username,
    };
}
