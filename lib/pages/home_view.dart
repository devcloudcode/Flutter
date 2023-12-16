import 'package:flutter/material.dart';
import 'package:flutter_course/pages/columns_view.dart';
import 'package:flutter_course/pages/complex_dynamic_list.dart';

import 'package:flutter_course/pages/container_styling.dart';

import 'package:flutter_course/pages/flex_view.dart';
import 'package:flutter_course/pages/form_validator_view.dart';
import 'package:flutter_course/pages/row_view.dart';
import 'package:flutter_course/pages/simple_dynamic_list_view.dart';
import 'package:flutter_course/pages/stack_view.dart';
import 'package:flutter_course/pages/stateful_widget_calc.dart';
import 'package:flutter_course/pages/stateful_widget_intro.dart';
import 'package:flutter_course/pages/text_field_styling.dart';
import 'package:flutter_course/pages/text_field_view.dart';
import 'package:flutter_course/pages/text_styling_01.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
              title: const Text("complex dynamic List"),
              subtitle: const Text("Dynamic lists using model and widget..."),
              leading: const Icon(Icons.list_alt),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ComplexDynamicList(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Simple dynamic List"),
              subtitle: const Text("How to make Simple dynamic List..."),
              leading: const Icon(Icons.list),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SimpleListView(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Calculetor"),
              subtitle: const Text("How to do dynamic Calculetor..."),
              leading: const Icon(Icons.calculate_outlined),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatefulWidgetCalculetor(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Stateful Widgets Introduction"),
              subtitle: const Text("How to do dynamic screen..."),
              leading: const Icon(Icons.refresh),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => StatefulWidgetIntroView(),
                    ));
              },
            ),
            ListTile(
              title: const Text("FormValidator"),
              subtitle: const Text("How to validate Form data..."),
              leading: const Icon(Icons.check_circle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FormValidatorView(),
                    ));
              },
            ),
            ListTile(
              title: const Text("TextField Styling..."),
              subtitle: const Text("How to style text-Field"),
              leading: const Icon(Icons.style),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextFieldStyle(),
                    ));
              },
            ),
            ListTile(
              title: const Text("FormBuilder - TextField"),
              subtitle: const Text("How to manage text-Field"),
              leading: const Icon(Icons.text_format),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                // debugPrint("click me");
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TextFieldView(),
                    ));
              },
            ),
            ListTile(
              title: const Text("Toast Package"),
              subtitle: const Text("Toast Testing..."),
              leading: const Icon(Icons.notifications),
              trailing: const Icon(Icons.chevron_right),
              onTap: () async {
                await Fluttertoast.showToast(
                  msg: 'this is testing short toast',
                  toastLength: Toast.LENGTH_LONG,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red[100],
                  textColor: Colors.pink,
                  fontSize: 16.0,
                );
              },
            ),
            const Divider(),
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
