import 'package:examples/page_examples_list.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'March 19 examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ExamplesList(),
    );
  }
}
