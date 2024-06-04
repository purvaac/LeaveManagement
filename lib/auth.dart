import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signUp(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      // Sign-up successful, user is logged in
      print('User signed up: ${userCredential.user!.uid}');
      // You can navigate to another screen or perform additional actions here
    } catch (e) {
      // Sign-up failed, display error message
      print('Sign up error: $e');
      // Handle the error or display a user-friendly message to the user
    }
  }

  // Add more authentication methods (e.g., signIn, signOut) as needed

}
