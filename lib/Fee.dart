import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing3/studentscreen.dart';

class FeeStr extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
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
        title: Center(child: Text('Fee Structure            ')),
      ),
      body:Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Center(
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top:30.0,bottom:70),
                    child: Text('Fee Structure 2020-2021',
                      style: TextStyle(fontSize: 28,),
                    ),
                  ),
                ),
                Container(
                    height: 360,
                    width: 420,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("images/fees.png"),
                          fit: BoxFit.fill,
                        )
                    )
                ),
              ],
            ),
          ),
        ),


    );
  }
}
class Calendar extends StatelessWidget {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
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
        title: Center(child: Text('Calendar            ')),
      ),
      body:Padding(
        padding: const EdgeInsets.only(top: 0),
        child: Center(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:30.0,bottom:70),
                  child: Text('Calendar 2020-2021',
                    style: TextStyle(fontSize: 28,),
                  ),
                ),
              ),
              Container(
                  height: 360,
                  width: 420,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/cal.png"),
                        fit: BoxFit.fill,
                      )
                  )
              ),
            ],
          ),
        ),
      ),


    );
  }
}