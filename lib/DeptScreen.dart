import 'package:flutter/material.dart';
import 'package:testing3/MyAttendance.dart';
import 'package:testing3/MySubjects.dart';

class Depart extends StatefulWidget {
  @override
  _DepartState createState() => _DepartState();
}
enum OptionMenu { logout }

class _DepartState extends State<Depart> {
  Widget build(BuildContext context) {
    return Scaffold(
          body: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.map),
                onTap:(){
                  //Navigator.pop(context);
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (BuildContext abc)=> MySubjects()
                      )
                  );
                } ,
                title: Text('My Subjects',
                style: TextStyle(fontSize: 18),),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MyAttendance()));
                  },
                title: Text('Teachers info',
                  style: TextStyle(fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Container(
                  height: 380.0,
                  width: 380.0, // fixed width and height
                  child: Image.asset('images/teacher.gif'),
                ),
              ),
            ],
          ),
    );
  }
}
