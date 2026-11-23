import 'package:material_ui/material_ui.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinTtext;
  final bool obscureText;

  const new({
    super.key,
    required this.controller,
    required this.hinTtext,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        fillColor: Colors.black,
        filled: true,
      ),
    );
  }
}
