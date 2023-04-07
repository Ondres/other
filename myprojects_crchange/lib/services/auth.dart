import 'package:firebase_auth/firebase_auth.dart';
import 'package:cryptochange/domains/user.dart';

class AuthService{
  final FirebaseAuth _fAuth = FirebaseAuth.instance;

  Future signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _fAuth.signInWithEmailAndPassword(email: email, password: password);
      User user = result.user as User;
      return User1.fromFirebase(user);
    }
    catch(e){
      return null;
    }
  }

  Future registerInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential result = await _fAuth.createUserWithEmailAndPassword(email: email, password: password);
      User user = result.user as User;
      return User1.fromFirebase(user);
    }
    catch(e){
      return null;
    }
  }

  Future logOut() async{
    await _fAuth.signOut();
  }

  Stream<User1> get currentUser{
    return _fAuth.authStateChanges().map((User? user) => user as User1);
  }

}











































