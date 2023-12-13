import 'package:flutter/material.dart';
import 'package:flutter_course/pages/text_styling_01.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter"),
        backgroundColor: Colors.amber,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text("Text Styling"),
              subtitle: Text("How to style text"),
              leading: Icon(Icons.text_fields),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextStyling(),
                    ));
              },
            )
          ],
        ),
      ),
    );
  }
}
