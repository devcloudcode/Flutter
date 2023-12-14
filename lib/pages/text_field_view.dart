import 'package:flutter/material.dart';

class TextFieldView extends StatelessWidget {
  TextFieldView({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextInputField"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: TextField(),
          ),
        ),
      ),
    );
  }
}
