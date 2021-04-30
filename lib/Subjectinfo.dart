import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'MySubjects.dart';

class OS extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  Color terColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
      ),
        onPressed:() {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MySubjects()));
        },
      ),
        backgroundColor: mainColor,
        title: Center(child: Text('Operating System        ')),
      ),
      backgroundColor: terColor,
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
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                        title:
                           Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(child: Text('Faculty Name :      ',
                              style: TextStyle(fontSize: 20),
                              )),

                              Text(
                                snapshot.data.documents[1]['FN'],
                                  style: TextStyle(fontSize: 15),

                                //textAlign: TextAlign.right,
                              ),
                         ],
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
                      title:
                      Row(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Preferred Books : ',style: TextStyle(fontSize: 20),)),
                          Text(' Silberschatz , Willey Pub \n Tanenbaum  Modern Operating\n System” PHI Learning.',style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                       // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Unit names :         ',style: TextStyle(fontSize: 20),),
                            Padding(
                              padding: const EdgeInsets.only(top : 20,bottom:20 ),
                              child: Text('Intoduction to OS \n\nScheduling and Synchronisation\n\nDeadlock\n\nPaging and Security \n\nDisk Scheduling and File \nManagement',style: TextStyle(fontSize: 15),),
                            )
                          ],
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
class CN extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  Color terColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MySubjects()));
          },
        ),
        backgroundColor: mainColor,
        title: Center(child: Text('Computer Networks        ')),
      ),
      backgroundColor: terColor,
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
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Faculty Name :      ',
                            style: TextStyle(fontSize: 20),
                          )),

                          Text(
                            snapshot.data.documents[1]['FNC'],
                            style: TextStyle(fontSize: 15),

                            //textAlign: TextAlign.right,
                          ),
                        ],
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
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Preferred Books : ',style: TextStyle(fontSize: 20),)),
                          Text('“Computer Networks”\n- TanenbaumPHI\n Learning “Data\n Communication & Networks ” \n Fourouzan TMH ',style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Unit names :         ',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(top : 20,bottom:20 ),
                            child: Text('Introduction of CN\n\nData Link Layer\n\nThe Network Layer\n\nTransport Layer\n\nApplication Layer ',style: TextStyle(fontSize: 15),),
                          )
                        ],
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
class TOC extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  Color terColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MySubjects()));
          },
        ),
        backgroundColor: mainColor,
        title: Center(child: Text('Theory Of Computation        ')),
      ),
      backgroundColor: terColor,
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
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Faculty Name :      ',
                            style: TextStyle(fontSize: 20),
                          )),

                          Text(
                            snapshot.data.documents[1]['FNT'],
                            style: TextStyle(fontSize: 15),

                            //textAlign: TextAlign.right,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 150,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Preferred Books : ',style: TextStyle(fontSize: 20),)),
                          Text('Daniel I.A. Cohen,“Introduction \nto Computer Theory”,\nWiley India.\n\nK.L.P Mishra\n & N.Chandrasekaran,“Theory\n of Computer Science” ',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Unit names :         ',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(top : 20,bottom:20 ),
                            child: Text('Introduction of TOC\n\nRegular Grammer\n\nIntroduction of CFG\n\nIntroduction of PDA\n\nTuring machines',
                              style: TextStyle(fontSize: 15),),
                          )
                        ],
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
class OOAD extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  Color terColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MySubjects()));
          },
        ),
        backgroundColor: mainColor,
        title: Center(child: Text('OOAD        ')),
      ),
      backgroundColor: terColor,
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
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Faculty Name :      ',
                            style: TextStyle(fontSize: 20),
                          )),

                          Text(
                            snapshot.data.documents[1]['FNO'],
                            style: TextStyle(fontSize: 15),

                            //textAlign: TextAlign.right,
                          ),
                        ],
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
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Preferred Books : ',style: TextStyle(fontSize: 20),)),
                          Text('Mahesh P. Matha, OOAD\n\n Andrew Haigh, OOAD',style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Unit names :',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(top : 20,bottom:20 ),
                            child: Text('Introduction to OOAD\n\nStatic Modeling by Class Diagrams\n\nDynamic Modeling by State Diagrams\n\nInteraction Modeling\n\nSystem design and class design',style: TextStyle(fontSize: 15),),
                          )
                        ],
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
class JAVAP extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  Color terColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MySubjects()));
          },
        ),
        backgroundColor: mainColor,
        title: Center(child: Text('JAVA        ')),
      ),
      backgroundColor: terColor,
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
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Faculty Name :      ',
                            style: TextStyle(fontSize: 20),
                          )),

                          Text(
                            snapshot.data.documents[1]['FNJ'],
                            style: TextStyle(fontSize: 15),

                            //textAlign: TextAlign.right,
                          ),
                        ],
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
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Preferred Books : ',style: TextStyle(fontSize: 20),)),
                          Text('Naughton&Schildt\n“TheCompleteReferenceJava\n\nLvanBayross“Java2.0”:\nBPBpublications.',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 225,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Unit names :      ',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(top : 20,bottom:20 ),
                            child: Text('The Java Environment\n\nAWT\n\nMultithreading and Exception \nHandling\n\nInput Output Streams\n\nJava Networking',
                              style: TextStyle(fontSize: 15),),
                          )
                        ],
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
class AI extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  Color terColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> MySubjects()));
          },
        ),
        backgroundColor: mainColor,
        title: Center(child: Text('JAVA        ')),
      ),
      backgroundColor: terColor,
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
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 125,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        //   mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Faculty Name :      ',
                            style: TextStyle(fontSize: 20),
                          )),

                          Text(
                            snapshot.data.documents[1]['FNA'],
                            style: TextStyle(fontSize: 15),

                            //textAlign: TextAlign.right,
                          ),
                        ],
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
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text('Preferred Books : ',style: TextStyle(fontSize: 20),)),
                          Text('Rich E and Knight K, \n“Artificial Intelligence”\n\nNelsson N.J., “Principles \nof Artificial Intelligence”',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4,right:4,top: 4,bottom: 12),
                  child: Container(
                    height: 225,
                    decoration: BoxDecoration(
                      color: secColor,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: ListTile(
                      title:
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Unit names :      ',style: TextStyle(fontSize: 20),),
                          Padding(
                            padding: const EdgeInsets.only(top : 20,bottom:20 ),
                            child: Text('The Java Environment\n\nAWT\n\nMultithreading and Exception \nHandling\n\nInput Output Streams\n\nJava Networking',
                              style: TextStyle(fontSize: 15),),
                          )
                        ],
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