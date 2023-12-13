import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stack"),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.orangeAccent,
            width: 200,
            height: 200,
          ),
          Container(
            color: Colors.white70,
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(top: 30, left: 30),
          ),
          Container(
            color: Colors.greenAccent,
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(top: 60, left: 60),
          ),
          Container(
            color: Colors.blueAccent,
            width: 200,
            height: 200,
            margin: const EdgeInsets.only(top: 90, left: 90),
            child: Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Stack(
                children: [
                  const Positioned(
                    top: 50,
                    left: 15,
                    child: Icon(Icons.notifications, size: 90),
                  ),
                  Positioned(
                      top: 65,
                      left: 67,
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.pink,
                        ),
                        alignment: Alignment.center,
                        // color: Colors.pink,
                        child: const Text(
                          "99",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
