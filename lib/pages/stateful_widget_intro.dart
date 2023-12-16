import 'package:flutter/material.dart';

class StatefulWidgetIntroView extends StatefulWidget {
  const StatefulWidgetIntroView({super.key});

  @override
  State<StatefulWidgetIntroView> createState() =>
      _StatefulWidgetIntroViewState();
}

class _StatefulWidgetIntroViewState extends State<StatefulWidgetIntroView> {
  int _count = 1;
  @override
  Widget build(BuildContext context) {
    debugPrint("Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stateful Widget Introduction"),
        elevation: 3,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text("This is stateful widget"),
              Text(
                "$_count",
                style: const TextStyle(fontSize: 45),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: MaterialButton(
                        color: Colors.greenAccent,
                        child: const Icon(Icons.add, color: Colors.white),
                        onPressed: () {
                          _count++;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: MaterialButton(
                        color: Colors.blueAccent[100],
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          _count--;
                          setState(() {});
                        },
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
