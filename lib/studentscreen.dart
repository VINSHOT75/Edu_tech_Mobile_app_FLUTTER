import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kommunicate_flutter_plugin/kommunicate_flutter_plugin.dart';

import 'CollegeScreen.dart';
import 'DeptScreen.dart';
import 'Fee.dart';
import 'NotesScreen.dart';
import 'Signin.dart';

class Vinayak extends StatelessWidget {
  const Vinayak({Key key , this.user}) : super(key:key);
  final UserCredential user ;
  @override
  Widget build(BuildContext context) {
    return Bottom();
  }
}
class Bottom extends StatefulWidget {
  @override
  _BottomState createState() => _BottomState();
}
enum OptionMenu { logout }


class _BottomState extends State<Bottom> {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  FirebaseAuth auth = FirebaseAuth.instance;
  Future <void>LogOut() async {
    FirebaseUser user = auth.signOut() as FirebaseUser;
  }
  String _platformVersion = 'Unknown';
  @override
  void initState() {
    super.initState();
    //initPlatformState();
  }

  Future<dynamic> initPlatformState() async {
    String platformVersion;
    try {
      platformVersion = await KommunicateFlutterPlugin.platformVersion;
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }
  Future<dynamic> openSupportChat() async {
    try {
      dynamic conObject = {'appId': '308fc23638788a828c664ccca85a2a27a'};
      dynamic result =
      await KommunicateFlutterPlugin.buildConversation(conObject);

      dynamic chatContext = {
        'key': 'value',
        'objKey': {'objKey1': 'objValue1', 'objKey2': 'objValue2'}
      };

      try {
        dynamic kmUser = {
          'metadata': {
            // 'Platform': 'Flutter',
            // 'OS': 'Android',
            // 'Version': '10.3'
          }
        };
        //KommunicateFlutterPlugin.updateUserDetail(kmUser);
      } on Exception catch (e) {
        print("Error while updating user details : " + e.toString());
      }

      KommunicateFlutterPlugin.updateChatContext(chatContext);
      print("Conversation builder success : " + result.toString());
    } on Exception catch (e) {
      print("Conversation builder error occurred : " + e.toString());
    }
  }

  int _page = 0;
  final screens = [
    Depart(),
    CollegeScr(),
    Notes(),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer : Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              // child: Text('App Drawer'
              //
              // ),
              decoration: BoxDecoration(
                color: mainColor,
              ),
            ),

            //Padding(
             // padding: const EdgeInsets.only(top:40.0),
              Container(
                child: ListTile(
                  title: Text('TracIT',
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    openSupportChat();
                    // Update the state of the app.
                    // ...
                  },
                ),
              ),
            ListTile(
              title: Text('Calendar',

                  style: TextStyle(fontSize: 20),),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>Calendar()));
              },
            ),
            ListTile(
              title: Text('Fee Structure',
                style: TextStyle(fontSize: 20),),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>FeeStr()));
              },
            ),
            ListTile(
              title: Text('Log out',
                style: TextStyle(fontSize: 20),),
              onTap: () {
                LogOut();
                //Navigator.pop(context);
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>LoginPage()));
              },
            ),
          ],
        ),
      ),

      appBar: AppBar(
        // leading: IconButton (icon:Icon(Icons.arrow_back_ios
        // ),
        //   onPressed:() {
        //     Navigator.pop(context);
        //   },
        // ),
        backgroundColor: mainColor,
        title : Center(
          child: Text(
              'TRACIT          '
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: secColor,
        index: 0 ,
        items: <Widget>[
          Icon(Icons.business, size: 30),
          Icon(Icons.supervised_user_circle, size: 30),
          Icon(Icons.business, size: 30),
        ],
        color: mainColor,
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),

    body: screens[_page],
    );
  }
}

