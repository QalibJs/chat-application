import 'package:cloud_firestore/cloud_firestore.dart';

class OfferModel {
  final String username;
  final String email;
  final String? note;
  final String bio;
  final String senderId;
  final String receiverId;
  final Timestamp timestamp;


  OfferModel({
    this.note,
    required this.timestamp,
    required this.senderId,
    required this.receiverId,
    required this.username,
    required this.email,
    required this.bio,
  });

  Map<String, dynamic> toMap() {
    return {
      "username": username,
      "senderId": senderId,
      "receiverId": receiverId,
      "email": email,
      "bio": bio,
      "timestamp": timestamp,
      "note": note
    };
  }
}
