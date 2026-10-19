import 'package:firebase_auth/firebase_auth.dart';

Future<void> loginStudent(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: password);
    // User logged in!
  } on FirebaseAuthException catch (e) {
    print('Error: ${e.message}');
  }
}
