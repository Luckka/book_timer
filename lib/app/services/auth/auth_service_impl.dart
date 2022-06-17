
import 'package:book_timer/app/services/auth/auth_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthServiceImpl implements AuthService{
  @override
  Future<void> singIn() async{
   final googleUser = await GoogleSignIn().signIn();
   final googleAuth = await googleUser?.authentication;
   final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken
   );

   await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Future<void> singOut() async{
    await FirebaseAuth.instance.signOut();
    GoogleSignIn().disconnect();
  }
  
}