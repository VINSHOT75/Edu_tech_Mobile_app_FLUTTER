import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing3/MySubjects.dart';
import 'package:testing3/studentscreen.dart';

class MyAttendance extends StatefulWidget {
  @override
  _MyAttendanceState createState() => _MyAttendanceState();
}

class _MyAttendanceState extends State<MyAttendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton (icon:Icon(Icons.arrow_back_ios
          ),
            onPressed:() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> Vinayak()));
            },
          ),
          backgroundColor: mainColor,
          title: Center(child: Text('Teacher\'s Information      ')),
        ),
        body: StreamBuilder(
          stream: Firestore.instance.collection("teacher").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              print("sorry");
            }
            return SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['A'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['B'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['C'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['D'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['E'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['F'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['G'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['K'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                    child: Container(
                      height: 125,
                      decoration: BoxDecoration(
                        color: secColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['L'],
                            style: TextStyle(fontSize: 30),
                          ),
                        ),

                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),

    );
  }
}
