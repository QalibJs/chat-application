import '../../../data/model/offer/offer_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class OfferService {
  FirebaseFirestore db = FirebaseFirestore.instance;
  final Timestamp timestamp = Timestamp.now();

  Future<void> sendOffer(String bio, String username, String receiverId) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    OfferModel newOffer = OfferModel(
      senderId: auth.currentUser!.uid,
      username: username,
      receiverId: receiverId,
      email: auth.currentUser!.email!,
      bio: bio,
    );

    List<String> ids = [auth.currentUser!.uid, receiverId];
    ids.sort();
    String offerRoomId = ids.join("_");
    await db
        .collection("offer_room")
        .doc(offerRoomId)
        .collection("offers")
        .add(newOffer.toMap());
  }


  Stream<QuerySnapshot> getOffer(String senderId, String receiverId)
  {
    List<String> ids = [senderId, receiverId];
    ids.sort();
    String offerRoomId = ids.join("_");

    return db
        .collection("offer_room")
        .doc(offerRoomId)
        .collection("offers")
        .orderBy(timestamp)
        .snapshots();
  }
}