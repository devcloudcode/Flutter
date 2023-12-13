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
        "Text Style Text Style Text Style Text Style Text Style Text Style Text Style Text Style ",
        textAlign: TextAlign.justify,
        maxLines: 2,
        overflow: TextOverflow.visible,
        style: TextStyle(
          color: Colors.blue.shade900,
          fontSize: 25,
          backgroundColor: Colors.blue.shade100,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
          letterSpacing: 5,
          wordSpacing: 5,
        ),
      ),
    );
  }
}
