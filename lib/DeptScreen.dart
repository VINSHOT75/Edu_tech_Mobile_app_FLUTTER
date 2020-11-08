import 'package:flutter/material.dart';
import "package:cloud_firestore/cloud_firestore.dart";
import 'package:testing3/MyAttendance.dart';
import 'package:testing3/MySubjects.dart';

class Depart extends StatefulWidget {
  @override
  _DepartState createState() => _DepartState();
}
enum OptionMenu { logout }

class _DepartState extends State<Depart> {
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: ListView(
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.map),
                onTap:(){
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder:
                          (BuildContext context)=> MySubjects()));
                } ,
                title: Text('My Subjects'),
              ),
              ListTile(
                leading: Icon(Icons.photo_album),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MyAttendance()));

                },
                title: Text('My Attendance'),
              ),
            ],
          ),
        )
    );
  }
}
