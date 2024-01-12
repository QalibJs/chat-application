import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/offer/offer_model.dart';
import 'offer_state.dart';

class OfferCubit extends Cubit<OfferState> {
  OfferCubit() : super(OfferLoadingState());
  FirebaseFirestore db = FirebaseFirestore.instance;

  void getOfferItems(receiverId) async {
    FirebaseAuth auth = FirebaseAuth.instance;

    List<String> ids = [auth.currentUser!.uid, receiverId];
    ids.sort();
    String offerRoomId = ids.join("_");
    final offerDatas = await db
        .collection("offer_room")
        .doc(offerRoomId)
        .collection(
          "offers",
        )
        .get();
    map(offerDatas);
  }

  void map(QuerySnapshot<Map<String, dynamic>> offerDatas) {
    emit(OfferLoadingState());
    final datas = offerDatas.docs.map(
      (offers) => OfferModel(
          senderId: offers['senderId'],
          receiverId: offers['receiverId'],
          username: offers['username'],
          email: offers["email"],
          bio: offers["bio"]),
    );
    if (datas is List<OfferModel>) {
      emit(OfferSuccessState(offers: datas));
    } else {
      emit(OfferLoadingState());
    }
  }
}
