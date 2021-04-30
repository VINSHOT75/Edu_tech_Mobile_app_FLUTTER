import 'package:flutter/material.dart';
import 'package:testing3/studentscreen.dart';

import 'MySubjects.dart';


class CollegeScr extends StatefulWidget {
  @override
  _CollegeScrState createState() => _CollegeScrState();
}

class _CollegeScrState extends State<CollegeScr> {
  @override
  Widget build(BuildContext context) {
    return Aparna();
  }
}
class Aparna extends StatefulWidget {
  @override
  _AparnaState createState() => _AparnaState();
}

class _AparnaState extends State<Aparna> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> CollegeNotice()));

            },
            title: Text('College Notice',
              style: TextStyle(fontSize: 18),),
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            onTap: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> DepartNotice()));

            },
            title: Text('Department Notice',
              style: TextStyle(fontSize: 18),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Container(
              height: 400.0,
              width: 400.0, // fixed width and height
              child: Image.asset('images/notice.gif'),
            ),
          ),
        ],
      ),
    );


  }
}
class DepartNotice extends StatelessWidget {
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
          backgroundColor: mainColor ,
          title: Center(child: Text('Department Notice           ',
            style: TextStyle(fontSize: 18),)),
        ),
        body:Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top:30.0,bottom:30),
                            child: Text('Notice 2020-2021',
                              style: TextStyle(fontSize: 28,),
                            ),
                          ),
                        ),
                        //    Container(
                        SingleChildScrollView(
                          // child: Row(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child:
                                  Image.asset(
                                      'images/notice1.jpeg'
                                  ),
                                  decoration: BoxDecoration(
                                      color:secColor ,
                                      border:  Border.all(width: 20.0, color: secColor)),
                                  // borderRadius: ,boxShadow: ,shape: ),
                                ),
                                Container(
                                  child:
                                  Image.asset(
                                      'images/notice2.jpeg'
                                  ),
                                  decoration: BoxDecoration(
                                      color:secColor ,
                                      border:  Border.all(width: 20.0, color: secColor)),
                                  // borderRadius: ,boxShadow: ,shape: ),
                                ),
                                Container(
                                  child:
                                  Image.asset(
                                      'images/notice2.jpeg'
                                  ),
                                  decoration: BoxDecoration(
                                      color:secColor ,
                                      border:  Border.all(width: 20.0, color: secColor)),
                                  // borderRadius: ,boxShadow: ,shape: ),
                                ),
                              ],
                            )
                        ),
                      ],
                    )
                )
            )

        )
    );
  }
}


class CollegeNotice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          leading: IconButton (icon:Icon(Icons.arrow_back_ios
          ),
            onPressed:() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> Vinayak()));
            },
          ),
          backgroundColor: mainColor ,
          title: Center(child: Text('College Notice           ')),
        ),
        body:Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Center(
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(top:30.0,bottom:30),
                            child: Text('Notice 2020-2021',
                              style: TextStyle(fontSize: 28,),
                            ),
                          ),
                        ),
                        //    Container(
                        SingleChildScrollView(
                          // child: Row(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child:
                                  Image.asset(
                                      'images/notice1.jpeg'
                                  ),
                                  decoration: BoxDecoration(
                                      color:secColor ,
                                      border:  Border.all(width: 20.0, color: secColor)),
                                  // borderRadius: ,boxShadow: ,shape: ),
                                ),
                                Container(
                                  child:
                                  Image.asset(
                                      'images/notice2.jpeg'
                                  ),
                                  decoration: BoxDecoration(
                                      color:secColor ,
                                      border:  Border.all(width: 20.0, color: secColor)),
                                  // borderRadius: ,boxShadow: ,shape: ),
                                ),
                                Container(
                                  child:
                                  Image.asset(
                                      'images/notice2.jpeg'
                                  ),
                                  decoration: BoxDecoration(
                                      color:secColor ,
                                      border:  Border.all(width: 20.0, color: secColor)),
                                  // borderRadius: ,boxShadow: ,shape: ),
                                ),
                              ],
                            )
                        ),
                      ],
                    )
                )
            )

        )
      );
  }
}
