import 'package:flutter/material.dart';

class TextFieldStyle extends StatefulWidget {
  TextFieldStyle({super.key});

  @override
  State<TextFieldStyle> createState() => _TextFieldStyleState();
}

class _TextFieldStyleState extends State<TextFieldStyle> {
  final _formKey = GlobalKey<FormState>();
  bool checkboxlisttile = true;
  bool checkbok1 = true;
  bool checkbok2 = true;
  bool checkbok3 = true;

  int? _b1 = 0;

  List<String> bike = [
    "Yamaha R15 V4",
    "BMW G310 RR",
    "Suzuki Gixxer SF",
    "Royal Enfield"
  ];

  @override
  Widget build(BuildContext context) {
    print("BUild");
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFieldStyle"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    // textAlign: TextAlign.center,
                    // initialValue: "Devang",
                    decoration: const InputDecoration(
                      icon: Icon(Icons.person),
                      iconColor: Colors.pink,
                      // label: Text("Username"),
                      labelText: "Username",
                      labelStyle: TextStyle(
                        backgroundColor: Colors.red,
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                      floatingLabelStyle: TextStyle(
                        backgroundColor: Colors.amberAccent,
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.italic,
                      ),
                      hintText: "Enter Your Username",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      errorText: "Username is required!!",
                      isDense: false,
                    ),

                    onTap: () {},
                  ),
                  TextFormField(
                    // textAlign: TextAlign.center,
                    // initialValue: "Devang",
                    decoration: const InputDecoration(
                        icon: Icon(Icons.map),
                        iconColor: Colors.pink,
                        // label: Text("Address"),
                        labelText: "Address"),
                    onTap: () {},
                  ),
                  CheckboxListTile(
                    value: checkboxlisttile,
                    title: const Text("CheckboxListTile"),
                    // hoverColor: Colors.amber,
                    // checkColor: Colors.amber,
                    // tileColor: Colors.amber,
                    // fillColor:
                    //     MaterialStateColor.resolveWith((states) => Colors.amber),
                    // activeColor: Colors.amberAccent,
                    // overlayColor: MaterialStateColor.resolveWith(
                    //     (states) => Colors.amberAccent),
                    // selectedTileColor: Colors.amberAccent,
                    // checkboxShape: BeveledRectangleBorder(
                    //   borderRadius: BorderRadius.circular(5),
                    // ),
                    // shape: CircleBorder(eccentricity: 0),
                    // splashRadius: 20.0,
                    onChanged: (bool? value) {
                      setState(() {
                        checkboxlisttile = value!;
                      });
                    },
                  ),
                  const Divider(),
                  Container(
                    color: Colors.green[50],
                    child: Column(
                      children: [
                        const Text("what programming languages do you know?"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 20),
                              child: Text("C++"),
                            ),
                            Checkbox(
                              value: checkbok2,
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 15),
                              child: Text("Java"),
                            ),
                            Checkbox(
                              value: checkbok2,
                              onChanged: (value) {},
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 15),
                              child: Text("python"),
                            ),
                            Checkbox(
                              value: checkbok2,
                              onChanged: (value) {},
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text("Swift"),
                            ),
                            Checkbox(
                              value: checkbok1,
                              onChanged: (value) {
                                setState(() {
                                  checkbok1 = value!;
                                });
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 15),
                              child: Text("JavaScript"),
                            ),
                            Checkbox(
                              value: checkbok2,
                              onChanged: (value) {
                                setState(() {
                                  checkbok2 = value!;
                                });
                              },
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10, right: 15),
                              child: Text("C#"),
                            ),
                            Checkbox(
                              value: checkbok3,
                              onChanged: (bool? value) {
                                setState(() {
                                  checkbok3 = value!;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text("do you have bike?"),
                  Container(
                    margin: const EdgeInsets.only(top: 12),
                    child: Wrap(
                      alignment: WrapAlignment.spaceBetween,
                      runSpacing: 10.0,
                      spacing: 22.0,
                      children: List.generate(
                        bike.length,
                        (index) {
                          return ChoiceChip(
                            label: Text(bike[index]),
                            selected: _b1 == index,
                            onSelected: (bool selected) {
                              setState(() {
                                _b1 = selected ? index : null;
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  DatePickerDialog(
                    initialDate: DateTime(2023),
                    firstDate: DateTime(1970),
                    lastDate: DateTime(2030),
                  ),
                  const TimePickerDialog(
                    initialTime: TimeOfDay(
                      hour: 24,
                      minute: 60,
                    ),
                  ),
                  DropdownButtonFormField(
                    hint: const Text("Colors"),
                    decoration:
                        const InputDecoration(labelText: "Select Color"),
                    items: const [
                      DropdownMenuItem(
                        value: "red",
                        child: Text("Red"),
                      ),
                      DropdownMenuItem(
                        // value: "Select Colors",
                        value: "white",
                        child: Text("white"),
                      ),
                      DropdownMenuItem(
                        value: "blue",
                        child: Text("blue"),
                      ),
                      DropdownMenuItem(
                        value: "black",
                        child: Text("black"),
                      ),
                    ],
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
