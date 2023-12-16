import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulWidgetCalculetor extends StatefulWidget {
  const StatefulWidgetCalculetor({super.key});

  @override
  State<StatefulWidgetCalculetor> createState() =>
      _StatefulWidgetCalculetorState();
}

class _StatefulWidgetCalculetorState extends State<StatefulWidgetCalculetor> {
  // late TextEditingController value1;
  // late TextEditingController value2;

  int value1 = 0;
  int value2 = 0;
  int ans = 0;

  // @override
  // void initState() {
  //   value1 = TextEditingController();
  //   value2 = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   value1.dispose();
  //   value2.dispose();
  //   super.dispose();
  // }MaterialButton(
  //   color: Colors.white10,
  //   child: const Icon(CupertinoIcons.divide),
  //   onPressed: () {
  //     ans = value1 / value2 as int;
  //     debugPrint("$ans");

  //     setState(() {});
  //   },
  // ),

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculetor"),
      ),
      body: Form(
          child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              value1 = int.parse(value.toString());
            },
          ),
          TextFormField(
            onChanged: (value) {
              value2 = int.parse(value.toString());
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "$ans",
            style: const TextStyle(fontSize: 25),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MaterialButton(
                color: Colors.redAccent,
                child: const Icon(Icons.add),
                onPressed: () {
                  ans = value1 + value2;
                  debugPrint("$ans");

                  setState(() {});
                },
              ),
              MaterialButton(
                color: Colors.amberAccent,
                child: const Icon(Icons.remove),
                onPressed: () {
                  ans = value1 - value2;
                  debugPrint("$ans");

                  setState(() {});
                },
              ),
              MaterialButton(
                color: Colors.greenAccent,
                child: const Icon(CupertinoIcons.multiply),
                onPressed: () {
                  ans = value1 * value2;
                  debugPrint("$ans");

                  setState(() {});
                },
              ),
              MaterialButton(
                color: Colors.blueAccent,
                child: const Icon(CupertinoIcons.divide),
                onPressed: () {
                  ans = value1 ~/ value2;
                  debugPrint("$ans");

                  setState(() {});
                },
              ),
            ],
          )
        ],
      )),
    );
  }
}
