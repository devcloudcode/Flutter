import 'package:flutter/material.dart';

class SimpleListView extends StatefulWidget {
  const SimpleListView({super.key});

  @override
  State<SimpleListView> createState() => _SimpleListViewState();
}

class _SimpleListViewState extends State<SimpleListView> {
  List<String> bickname = [
    "Yamaha R15 V4",
    "BMW G310 RR",
    "Suzuki Gixxer SF",
    "Royal Enfield"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Dynamic List View"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: bickname.length,
          itemBuilder: (context, index) {
            return Text(bickname[index]);
          },
        ),
      ),
    );
  }
}
