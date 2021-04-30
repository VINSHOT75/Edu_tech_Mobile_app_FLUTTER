import 'package:flutter/material.dart';
import 'package:testing3/CDC.dart';

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}
enum OptionMenu { logout }

class _NotesState extends State<Notes> {

  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Image.asset('images/cdc.jpeg'),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (BuildContext abc)=> CDC(),
                  )
              );
            },
            title: Text('Career Development Cell',
              style: TextStyle(fontSize: 18),),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            onTap: (){
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (BuildContext abc)=> Yavnika(),
                  )
              );
            },
            title: Text('YAVNIKA CLUB',
              style: TextStyle(fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
                    height: 350.0,
                    width: 350.0, // fixed width and height
                    child: Image.asset('images/clubs.gif'),
                ),
          ),
        ],
      ),
    );
  }
}
