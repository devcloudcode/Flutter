import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TextFieldStyle extends StatelessWidget {
  TextFieldStyle({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TextFieldStyle"),
      ),
      body: Container(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
