import 'package:flutter/material.dart';

class ColumnsView extends StatelessWidget {
  const ColumnsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Columns"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.orange,
            width: double.infinity,
            height: 50,
          ),
          Container(
            // color: Colors.white,
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2),
                shape: BoxShape.circle),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 50,
          ),
          // const SizedBox(
          //   height: 3,
          // ),
          Container(
            color: Colors.orange,
            width: double.infinity,
            height: 50,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                shape: BoxShape.circle),
          ),
          Container(
            color: Colors.green,
            width: double.infinity,
            height: 50,
          ),
        ],
      ),
    );
  }
}
