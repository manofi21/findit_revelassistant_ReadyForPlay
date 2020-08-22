import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthnetication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;

  Future<FirebaseUser> signIn(String email, String password) async {
    AuthResult result = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    return user;
  }

  Future<String> signUp(String email, String password) async {
    AuthResult result = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser user = result.user;
    print(user.uid);
    return (user.uid); //!= null) ? true : false;
  }

  Future<bool> isLoggedIn() async {
    this.user = await _auth.currentUser();
    if (this.user == null) {
      return false;
    }
    return true;
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e);
    }
  }
}
