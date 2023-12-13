import 'package:flutter/material.dart';
import 'package:flutter_course/pages/columns_view.dart';
import 'package:flutter_course/pages/container_styling.dart';
import 'package:flutter_course/pages/flex_view.dart';
import 'package:flutter_course/pages/row_view.dart';
import 'package:flutter_course/pages/stack_view.dart';
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
              title: const Text("Text Styling"),
              subtitle: const Text("How to style text"),
              leading: const Icon(Icons.text_fields),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextStyling(),
                    ));
              },
            ),
            const SizedBox(
              height: 3,
            ),
            ListTile(
              title: const Text("Container Styling"),
              subtitle: const Text("How to style Container"),
              leading: const Icon(Icons.account_box),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContainerStyling(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Columns"),
              subtitle: const Text("How to manage Columns..."),
              leading: const Icon(Icons.view_column_outlined),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ColumnsView(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Rows"),
              subtitle: const Text("How to manage Rows..."),
              leading: const Icon(Icons.table_rows),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RowView(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Flex"),
              subtitle: const Text("How to manage Flex..."),
              leading: const Icon(Icons.table_rows),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FlexView(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text("Stack"),
              subtitle: const Text("How to manage Stack..."),
              leading: const Icon(Icons.stacked_bar_chart),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StackView(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
