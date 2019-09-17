import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyScreenState();
}

class MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
      ),
    );
  }
}
