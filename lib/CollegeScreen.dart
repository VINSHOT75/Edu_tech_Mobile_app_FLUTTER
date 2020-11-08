import 'package:flutter/material.dart';


class CollegeScr extends StatefulWidget {
  @override
  _CollegeScrState createState() => _CollegeScrState();
}

class _CollegeScrState extends State<CollegeScr> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Aparna(),
    );
  }
}
class Aparna extends StatefulWidget {
  @override
  _AparnaState createState() => _AparnaState();
}

class _AparnaState extends State<Aparna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
      ListTile(
      leading: Icon(Icons.map),
      onTap: (){},
      title: Text('College Notice'),
    ),
    ListTile(
    leading: Icon(Icons.photo_album),
    onTap: (){},
    title: Text('Department Notice'),
    ),
          ],
      ),
    );


  }
}

