import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const String windowTitle = "Home";
    return MaterialApp(
      title: windowTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(windowTitle)),
        body: const Center(
          child: 
        ),
      ),
    )
}
}


