import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseServices {
  FirebaseServices._();
  //register
  static Future register(
      String email, String password, String username, String bio) async {
    FirebaseAuth register = FirebaseAuth.instance;
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    UserCredential userCredential =
        await register.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await firestore
        .collection("users")
        .doc(
          userCredential.user!.uid,
        )
        .set(
      {
        "uid": userCredential.user!.uid,
        "email": email,
        "username": username,
        "bio": bio
      },
    );
  }

  // update datas

  static Future update(String bio) async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    FirebaseAuth auth = FirebaseAuth.instance;
    db
        .collection("users")
        .doc(
          auth.currentUser!.uid,
        )
        .update(
      {
        "bio": bio,
      },
    );
  }

  //reset password
  static Future resetPassword(email) async {
    FirebaseAuth firebaseAuth = FirebaseAuth.instance;
    await firebaseAuth.sendPasswordResetEmail(email: email);
  }

  //logOut
  static Future logOut() async {
    FirebaseAuth logOut = FirebaseAuth.instance;

    await logOut.signOut();
  }

  //login
  static Future login(String email, String password) async {
    FirebaseAuth login = FirebaseAuth.instance;
    await login.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }

  //delete account
  static Future deleteAccountDb() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseFirestore db = FirebaseFirestore.instance;
    await db
        .collection("users")
        .doc(
          auth.currentUser!.uid,
        )
        .delete();
  }

  static Future deleteAccountAuth() async {
    FirebaseAuth auth = FirebaseAuth.instance;

    await auth.currentUser!.delete();
  }
}
