import 'package:flutter/material.dart';

class ComplexDynamicList extends StatefulWidget {
  const ComplexDynamicList({super.key});

  @override
  State<ComplexDynamicList> createState() => _ComplexDynamicListState();
}

class _ComplexDynamicListState extends State<ComplexDynamicList> {
  final _formkey = GlobalKey<FormState>();

  String singlename = "";
  List<String> names = [];

  @override
  Widget build(BuildContext context) {
    debugPrint("Build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Complex Dynamic View"),
      ),
      body: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  singlename = value.toString();
                },
              ),
              const SizedBox(
                height: 10,
              ),
              MaterialButton(
                color: Colors.amberAccent,
                onPressed: () {
                  if (singlename.isEmpty) {
                    return;
                  }
                  names.add(singlename);
                  singlename = "";
                  _formkey.currentState!.reset();
                  setState(() {});
                },
                child: const Text("Add Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              names.isEmpty
                  ? const Text("No name added yet")
                  : Expanded(
                      child: ListView.builder(
                      itemCount: names.length,
                      itemBuilder: (context, index) {
                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${index + 1} ${names[index]}"),
                            InkWell(
                              onTap: () {
                                names.removeAt(index);
                                setState(() {});
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Colors.redAccent,
                              ),
                            ),
                          ],
                        );
                      },
                    ))
            ],
          )),
    );
  }
}
