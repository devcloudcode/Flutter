import 'package:flutter/material.dart';

class RowView extends StatelessWidget {
  const RowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rows"),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.orangeAccent,
            width: 50,
            height: 100,
          ),
          Container(
            color: Colors.white,
            width: 50,
            height: 100,
          ),
          Container(
            color: Colors.greenAccent,
            width: 50,
            height: 100,
          ),
        ],
      ),
    );
  }
}
