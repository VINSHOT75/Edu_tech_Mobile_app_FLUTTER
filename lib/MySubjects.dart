import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing3/Subjectinfo.dart';
import 'package:testing3/studentscreen.dart';
Color mainColor = Color(0xff305049);
Color secColor = Color(0xffD0BEA5);
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
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  Color terColor = Colors.white70;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: terColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
            leading: IconButton (icon:Icon(Icons.arrow_back_ios
            ),
            onPressed:() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> Vinayak()));
              },
            ),
          backgroundColor: mainColor,
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> OS()));
                            //Navigator.pop(context);
                          },
                          title: Center(
                            child: Text(
                                snapshot.data.documents[0]['OS'],
                              style: TextStyle(fontSize: 30),
                            ),
                          )
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> CN()));
                          },
                          title: Center(
                            child: Text(
                                snapshot.data.documents[0]['CN'],
                              style: TextStyle(fontSize: 30),
                            ),
                          )
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> TOC()));
                          },
                          title: Center(
                            child: Text(
                                snapshot.data.documents[0]['TOC'],
                              style: TextStyle(fontSize: 30),
                            ),
                          )
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> OOAD()));
                          },
                          title: Center(
                            child: Text(
                                snapshot.data.documents[0]['ooad'],
                            style: TextStyle(fontSize: 30),
                            ),
                          )
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
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> JAVAP()));
                          },
                          title: Center(
                            child: Text(
                                snapshot.data.documents[0]['JP'],
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
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> AI()));
                        },
                        title: Center(
                          child: Text(
                            snapshot.data.documents[0]['AI'],
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
