import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

Reference get firebaseStorage => FirebaseStorage.instance.ref();

class FirebaseStorageService extends GetxService {
  Future getImage(String? imgUrl) async {
    if (imgUrl == null) {
      return null;
    }
    try {
      var urlRef = firebaseStorage
          .child("profil_photos")
          .child("${imgUrl.toLowerCase()}.png");
      var url = await urlRef.getDownloadURL();
      return url;
    } on FirebaseException catch (e) {
      // print(e.message);
      return e;
    }
  }
}
