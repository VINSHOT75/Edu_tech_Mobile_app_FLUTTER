import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:testing3/MySubjects.dart';
import 'ForgotScreen.dart';
import 'studentscreen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() =>  _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  //Color terColor = Color(0xfff25e38);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      //backgroundColor: secColor,
      appBar:  AppBar(
          backgroundColor: mainColor,
          //shadowColor: Colors.teal,
          elevation: 50,
          title: Center(
              child: Text('Sign In'
              )
          )
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: TextFormField(
                        cursorColor: secColor,
                        validator: (input){
                          if(input.isEmpty){
                            return 'Provide an email';
                          }
                        },
                        onSaved: (input) => _email = input,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          labelStyle: TextStyle(
                          color: mainColor,
                        ),
                          fillColor: mainColor,
                          hintStyle: TextStyle(
                          //color: Colors.white,
                          ),
                            focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                        color: mainColor,
                        ),
                      ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: TextFormField(
                          cursorColor: mainColor,
                          //keyboardType: TextInputType.phone,
                        validator: (input) {
                          if(input.length < 6){
                            return 'Longer password please';
                          }

                      },
                        onSaved: (input) => _password = input,
                        decoration: InputDecoration(
                            labelText: 'Passsword',
                          labelStyle: TextStyle(
                            color: mainColor,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: mainColor,
                            ),
                          ),
                        ),
                        obscureText: true,
                      ),
                    ),
                    Padding (padding: EdgeInsets.only(top: 18 ,right: 20),
                    child: Container (
                      width: double.infinity,
                        child: InkWell(
                          onTap:(){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> ForgotScreen()));
                          },
                          child: Text('Forgot Password',
                          style: TextStyle(
                            color: mainColor
                          ),
                          textAlign: TextAlign.right,),
                        ),
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top :20.0),

                      child: ButtonTheme(
                        height: 40,
                        minWidth: 500,
                        child: RaisedButton(
                          color: secColor,
                          elevation: 5,
                          onPressed:(){
                            signIn();
                            //Navigator.pop(context);
                          },
                          child: Text(
                              'Sign in',
                            style:TextStyle(
                                color: mainColor,
                                height: 1, fontSize: 19.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 27),
                      child: Container(
                        height: 350,
                        width: 950,
                        decoration: BoxDecoration(
                        image: DecorationImage(
                        image: AssetImage("images/signinw.gif"),
                        fit: BoxFit.fill,
                      )
                        )
                      ),
                    ),
                  ],
                ),
              ),
            )
        ),

      ),
    );
  }

  void signIn() async {
    if(_formKey.currentState.validate()){
      _formKey.currentState.save();
      try{
        UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _password);
        Navigator.push(context, MaterialPageRoute(builder: (context) => Vinayak(user: user),

            )
            //Navigator.pop(context);
        );
      }catch(e){
        print(e.message);
        return(e.message);

      }
    }
  }
}


//308fc23638788a828c664ccca85a2a27a