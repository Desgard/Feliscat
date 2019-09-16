import 'package:flutter/material.dart';

class ProblemDetailScreen extends StatefulWidget {
  @override 
  State<StatefulWidget> createState() => ProblemDetailScreenState();
}

class ProblemDetailScreenState extends State<ProblemDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Problem Detail'),
      ),
    );
  }
}