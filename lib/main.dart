import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:go_router/go_router.dart';
import 'src/presentation/home.dart';
import 'src/presentation/leaderboard.dart';

import 'firebase_options.dart';

FirebaseDatabase database = FirebaseDatabase.instance;

void main() => runApp(MaterialApp(
  initialRoute: "/",
  routes: {
    '/':(context) => const HomeScreen(),
    '/leaderboard':(context) => BoardScreen(ranking: ranking),
  },
));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'PiramidBase';
    return MaterialApp(
      title: appTitle,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        brightness: Brightness.dark,
      ),
    );
  }
}

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: AppBarMade());
  }
}

class AppBarMade extends StatelessWidget {
  const AppBarMade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PiramidBase"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.manage_accounts),
            tooltip: "Manage Account",
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(context) )
              },
          )
        ],
      ),
    )
  }
}
