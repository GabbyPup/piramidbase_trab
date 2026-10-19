import 'package:firebase_database/firebase_database.dart';

/// A user account with associated metadata.
class Account {
  const Account({required this.username, this.displayName, this.starScore, this.rank});

  final String username;

  final String? displayName;

  final num starScore = 0.0;

  final int rank = 0;

  Account copyWith({String? username, String? displayName, num? starScore, int? rank}) =>
      Account(
        username: username ?? this.username,
        displayName: displayName ?? this.displayName,
        starScore: starScore ?? this.starScore,
        rank: rank ?? this.rank,
      );

  @override
  String toString() =>
      'Account(username: $username, displayName: $displayName, starScore: $starScore, rank: $rank)';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Account &&
          runtimeType == other.runtimeType &&
          username == other.username;
  @override
  int get hashCode => username.hashCode;
}
