import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing3/Teacherinfo.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MySubjects());
}
class MySubjects extends StatefulWidget {
  @override
  _MySubjectsState createState() => _MySubjectsState();
}

class _MySubjectsState extends State<MySubjects> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
            leading: IconButton (icon:Icon(Icons.arrow_back_ios
            ),
            onPressed:() {
              Navigator.of(context).pop(true);
              },
            ),
          backgroundColor: Colors.deepOrangeAccent,
             title: Center(child: Text("My Subjects            ")),
        ),
        body: StreamBuilder(
          stream: Firestore.instance.collection("MySubjects").snapshots(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {

            }
            return SingleChildScrollView(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: ListTile(
                        onTap: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> OS()));
                          //Navigator.pop(context);
                        },
                        title: Text(
                            snapshot.data.documents[0]['OS']
                        )
                    ),
                  ),
                  Card(
                    child: ListTile(
                        onTap: () {},
                        title: Text(
                            snapshot.data.documents[0]['CN'])
                    ),
                  ),
                  Card(
                    child: ListTile(
                        onTap: () {},
                        title: Text(
                            snapshot.data.documents[0]['TOC'])
                    ),
                  ),
                  Card(
                    child: ListTile(
                        onTap: () {},
                        title: Text(
                            snapshot.data.documents[0]['ooad'])
                    ),
                  ),
                  Card(
                    child: ListTile(
                        onTap: () {},
                        title: Text(
                            snapshot.data.documents[0]['JP'])
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
