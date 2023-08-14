import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMetods {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<String> singUpUser({
    required String phonenumber,
    required String password,
    required String username,
  }) async {
    String result = 'Some error occured';
    try {
      if (phonenumber.isNotEmpty ||
          password.isNotEmpty ||
          username.isNotEmpty) {
        UserCredential credential = await _auth.createUserWithEmailAndPassword(
            email: phonenumber, password: password);

        _fireStore.collection('users').doc(credential.user!.uid).set({
          'username': username,
          'uid': credential.user!.uid,
          'email': phonenumber,
          'following': [],
          'followers': [],
        });
      }
    } catch (err) {
      result = err.toString();
    }
    return result;
  }
}
