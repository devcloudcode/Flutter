import 'package:flutter/material.dart';

class TextStyling extends StatelessWidget {
  const TextStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Style"),
        elevation: 3.0,
      ),
      body: Text(
        "Text Style...",
        style: TextStyle(color: Colors.blue.shade900, fontSize: 30),
      ),
    );
  }
}
