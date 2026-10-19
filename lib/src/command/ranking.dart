library;

import 'package:firebase_database/firebase_database.dart';
import 'package:piramidbase_trab/src/command/user.dart';

final userID = findUserId();

final topUsers = FirebaseDatabase.instance
    .ref("$userID")
    .orderByChild("starCount");
