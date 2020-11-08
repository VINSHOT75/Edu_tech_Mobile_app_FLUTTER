import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Center(child: Text('My Subjects')),
        ),
        body: StreamBuilder(
          stream: Firestore.instance.collection("MySubjects").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              print("sorry");
            }
            return SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MySubjects()));
                        },
                        title: Row(
                          children: [
                            Text('Faculty Name :      '),
                            Text(
                                snapshot.data.documents[1]['TN']),

                          ],
                        )

                    ),
                  ),
                  // Card(
                  //   child: ListTile(
                  //       onTap: () {},
                  //       title: Text(
                  //           snapshot.data.documents[0]['CN'])
                  //   ),
                  // ),
                  // Card(
                  //   child: ListTile(
                  //       onTap: () {},
                  //       title: Text(
                  //           snapshot.data.documents[0]['TOC'])
                  //   ),
                  // ),
                  // Card(
                  //   child: ListTile(
                  //       onTap: () {},
                  //       title: Text(
                  //           snapshot.data.documents[0]['ooad'])
                  //   ),
                  // ),
                  // Card(
                  //   child: ListTile(
                  //       onTap: () {},
                  //       title: Text(
                  //           snapshot.data.documents[0]['JP'])
                  //   ),
                  // ),
                ],
              ),
            );
          },
          //var x =  snapshot.data.documents[0]['TOC'];
        ),
      ),
    );
  }
}
