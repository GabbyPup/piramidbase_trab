library;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:piramidbase_trab/src/command/ranking.dart';

class findUserId {
  final userId = FirebaseAuth.instance.currentUser?.uid;
}

class findStarCount {
  final stars = FirebaseDatabase.instance.ref("account-stars/$userID");
}
