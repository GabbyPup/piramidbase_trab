import 'package:flutter/cupertino.dart';
import 'package:material_ui/material_ui.dart';
import 'package:piramidbase_trab/src/components/text_field.dart';

class LoginPage extends StatefulWidget {
  const new({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                const SizedBox(height: 50),

                const Icon(Icons.import_contacts_sharp, size: 100),

                const Text("Bem-vindo ao PiramidBase."),

                const SizedBox(height: 25),

                MyTextField(
                  controller: emailTextController,
                  hinTtext: 'Email',
                  obscureText: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
