import 'package:flutter/material.dart';

class FlexView extends StatelessWidget {
  const FlexView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flex"),
      ),
      body: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.orangeAccent,
              height: 100,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.white,
              height: 100,
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: Colors.greenAccent,
              height: 100,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.blueAccent,
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
