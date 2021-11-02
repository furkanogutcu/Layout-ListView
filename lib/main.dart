import 'package:flutter/material.dart';
import 'package:layout_listview_app/widgets/homepage_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Layout Listview App Demo",
        home: HomePage(title: "Layout - ListView App"));
  }
}
