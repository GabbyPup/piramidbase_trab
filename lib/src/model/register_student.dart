import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerStudent(String email, String password) async {
  try {
    UserCredential userCredential = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password);
    // User registered successfully!
  } on FirebaseAuthException catch (e) {
    print('Failed with error code: ${e.code}');
  }
}
