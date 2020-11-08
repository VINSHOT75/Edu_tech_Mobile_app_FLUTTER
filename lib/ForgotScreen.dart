import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testing3/Signin.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  String email='';
  var _formKey=GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(padding: EdgeInsets.only(top: 50 , right: 20 , left: 20),
        child: Form(
          key: _formKey,
          child:
        Column(children:<Widget> [
          Text('we will call u tommorow'),
          TextFormField(
            validator: (input){
              if(input.isEmpty){
                return 'Provide an email';
              }
              else{
                email=input;
              }
             return null;
            },
            onSaved: (input) => email = input,

            decoration: InputDecoration(
                labelText: 'Email'
            ),

          ),
          Padding(padding:EdgeInsets.only(left: 20,right: 20),
            child: RaisedButton(
              onPressed: (){
                if (_formKey.currentState.validate()){
                  FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((input) => print('come tommorow'));
                  // Future<String> check=logIn();
                  // if(check != null)
                  //   {
                  //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>LoginPage()));
                  //   }
                }
              },
              child: Text('login'),
              padding: EdgeInsets.all(10),
            ),
          )
        ],
        ),
        ),
        ),
    ),
    );
  }
}
