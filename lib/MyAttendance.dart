import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAttendance extends StatefulWidget {
  @override
  _MyAttendanceState createState() => _MyAttendanceState();
}

class _MyAttendanceState extends State<MyAttendance> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Center(child: Text('My Attendance')),
        ),
        body: StreamBuilder(
          stream: Firestore.instance.collection("MyAttendance").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              print("sorry");
            }
            return Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: ListTile(
                      onTap: () {},
                      title: Text(
                          snapshot.data.documents[0]['M'])
                  ),
                ),
                Card(
                  child: ListTile(
                      onTap: () {},
                      title: Text(
                          snapshot.data.documents[1]['1'])
                  ),
                ),
                Card(
                  child: ListTile(
                      onTap: () {},
                      title: Text(
                          snapshot.data.documents[0]['S'])
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
