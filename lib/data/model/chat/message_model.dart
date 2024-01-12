import 'package:cloud_firestore/cloud_firestore.dart';

class MessageModel {
  final String receiverId;
  final String senderEmail;
  final String senderId;
  final String message;
  final Timestamp timestamp;
  MessageModel({
    required this.receiverId,
    required this.senderEmail,
    required this.senderId,
    required this.message,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      "senderEmail": senderEmail,
      "receiverId": receiverId,
      "senderId": senderId,
      "message": message,
      "timestamp": timestamp
    };
  }
}
