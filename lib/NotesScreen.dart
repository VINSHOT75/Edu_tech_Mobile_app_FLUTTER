import 'package:flutter/material.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}
enum OptionMenu { logout }

class _NotesState extends State<Notes> {

  Widget build(BuildContext context) {
    return MaterialApp(
        home:  Scaffold(
            body: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  onTap: (){},
                  title: Text('CDC'),
                  ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                    onTap: (){},
                  title: Text('YAVNIKA CLUB'),
                 ),
    ],
    ),
        ),
    );
  }
}
