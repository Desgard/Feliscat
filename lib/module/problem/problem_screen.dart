import 'package:flutter/material.dart';
import 'package:feliscat/module/problem/problem_detail_screen.dart';

class ProblemScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProblemScreenState();
}

class ProblemScreenState extends State<ProblemScreen> {

  Widget _taggedText(String desc, Color color) {
    return Container(
      padding: EdgeInsets.only(left: 0),
      margin: EdgeInsets.only(right: 8),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        color: color,
        child: Text(desc, style: TextStyle(color: Colors.white),),
      )
    );
  }

  Widget _problemCard() {
    return GestureDetector(
      onTap: _handleTap,
      child: Card(
        margin: EdgeInsets.all(12),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage:  NetworkImage("http://tupian.qqw21.com/article/UploadPic/2019-8/20198816503664815.jpeg"),
              ),
              title: Text("#1 Two Sum"),
              subtitle: Text("this is the desc for two sum"),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  _taggedText("binary search", Colors.green),
                  _taggedText("binary search", Colors.blue),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: Text('hello world', maxLines: 2, overflow: TextOverflow.ellipsis,),
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }

  void _handleTap() {
    print("hello tap");
    Navigator.push(context, MaterialPageRoute(builder: (_) {
      return ProblemDetailScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Problem List'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            _problemCard(),
            _problemCard(),
            _problemCard(),
            _problemCard(),
          ],
        )
      ),
    );
  }
}