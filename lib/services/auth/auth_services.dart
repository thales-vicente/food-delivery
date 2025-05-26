import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {

  // TODO get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // TODO get current user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  // TODO sign in
  Future<UserCredential> signInWithEmailPassword(String email, password) async {
    // TODO try sign user in
    try {
      // TODO sign user in
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password,);

      return userCredential;
    }
    // TODO catch any errors
    on FirebaseAuthException catch (e){
      throw Exception(e.code);
    }
  }

  // TODO sign up
  Future<UserCredential> signUpWithEmailPassword(String email, password) async {
    // TODO try sign user in
    try {
      // TODO sign user in
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      return userCredential;
    }
    // TODO catch any errors
    on FirebaseAuthException catch (e){
      throw Exception(e.code);
    }
  }

  // TODO sign out
  Future<void> signOut() async{
    return await _firebaseAuth.signOut();
  }
}