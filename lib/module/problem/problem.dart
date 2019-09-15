import 'package:flutter/material.dart';

class ProblemScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ProblemScreenState();
}

class ProblemScreenState extends State<ProblemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Problem List'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Card(
              child: Column(
                children: <Widget>[
                  // AspectRatio(
                  //   aspectRatio: 16 / 9,
                  //   child: ClipRRect(
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(4.0),
                  //       topRight: Radius.circular(4.0),
                  //     ),
                  //   ),
                  // ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("http://tupian.qqw21.com/article/UploadPic/2019-8/20198816503664815.jpeg"),
                    ),
                    title: Text("Test"),
                    subtitle: Text("sub Text"),
                  ),
                  Container(
                    padding: EdgeInsets.all(16.0),
                    child: Text('hello world', maxLines: 2, overflow: TextOverflow.ellipsis,),
                    width: double.infinity,
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }
}