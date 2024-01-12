import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../model/chat/message_model.dart';

class ChatService  {
  FirebaseFirestore dataBase = FirebaseFirestore.instance;
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> send(String receiverId, String message) async {
    final String currentUserId = auth.currentUser!.uid;
    final String currentUserEmail = auth.currentUser!.email!;
    final Timestamp timestamp = Timestamp.now();

    MessageModel newMessage = MessageModel(
      receiverId: receiverId,
      senderEmail: currentUserEmail,
      senderId: currentUserId,
      message: message,
      timestamp: timestamp,
    );

    List<String> ids = [currentUserId, receiverId];
    ids.sort();
    String chatRoomId = ids.join("_");
    await dataBase
        .collection("chat_rooms")
        .doc(chatRoomId)
        .collection("messages")
        .add(
          newMessage.toMap(),
        );
  }


  //get message
  Stream<QuerySnapshot> getMessage(String userId, String otherUserId) {
    List<String> ids = [userId, otherUserId];
    ids.sort();
    String chatRoomId = ids.join("_");
    return dataBase
        .collection("chat_rooms")
        .doc(chatRoomId)
        .collection("messages")
        .orderBy(
          "timestamp",
        )
        .snapshots();
  }

  void sendMessage(String receiverId, String message) async {
    send(receiverId, message);
  }
}
