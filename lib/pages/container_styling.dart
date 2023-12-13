import 'package:flutter/material.dart';

class ContainerStyling extends StatelessWidget {
  const ContainerStyling({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: const Text('Container Styling'),
      ),
      body: Container(
        /*when we create decoration then decoration does not allow to pass the color to container */
        // color: Colors.pink,
        alignment: Alignment.topCenter,
        // padding: EdgeInsets.only(left: 25, right: 25, top: 25),
        padding: const EdgeInsets.all(25),
        // margin: EdgeInsets.only(left: 25, right: 25, top: 25),
        margin: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.pink,
          border: Border.all(
            color: Colors.black,
            width: 5,
            style: BorderStyle.solid,
          ),
          // borderRadius: BorderRadius.circular(10),
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              bottomLeft: Radius.elliptical(100, 100)),
          shape: BoxShape.rectangle,
        ),
        // width: 300,
        // height: 300,
        child: Text(
          "This is Container This is Container This is Container This is Container This is Container This is Container This is Container This is Container This is Container",
          style: TextStyle(color: Colors.pink.shade50, fontSize: 25),
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
