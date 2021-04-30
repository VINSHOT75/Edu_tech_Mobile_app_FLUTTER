import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testing3/Signin.dart';

class ForgotScreen extends StatefulWidget {
  @override
  _ForgotScreenState createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  String email='';
  var _formKey=GlobalKey <FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> LoginPage()));
          },
        ),
        backgroundColor: mainColor ,
        title: Center(child: Text('Forgot Password')),
      ),
      body: Center(
        child: Padding(padding: EdgeInsets.only(top: 50 , right: 20 , left: 20),
          child: Form(
            key: _formKey,
            child:
            SingleChildScrollView(
              child: Column(children:<Widget> [
                Padding(
                  padding: const EdgeInsets.only(bottom : 14,right: 10),
                  child: Text('Oops! Someone has been forgetful...',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom :10, right : 180),
                  child: Text('Enter Your Email Address',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:10.0),
                  child: TextFormField(
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
                      labelText: 'Email',
                      labelStyle: TextStyle(
                        color: mainColor,
                      ),
                      fillColor: mainColor,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: mainColor,
                        ),
                      ),
                    ),

                  ),
                ),
                Padding(padding:EdgeInsets.only(top:12, left: 20,right: 20),
                  child: ButtonTheme(
                    height: 40,
                    minWidth: 500,
                    child: RaisedButton(
                      color: secColor,
                      onPressed: (){
                        if (_formKey.currentState.validate()){
                          FirebaseAuth.instance.sendPasswordResetEmail(email: email).then((input) => print('The email has been sent'));
                          // Future<String> check=logIn();
                          // if(check != null)
                          //   {
                          //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>LoginPage()));
                          //   }
                        }
                      },//*646*224
                      child: Text('Submit',
                        style: TextStyle(
                            color: mainColor,
                            height: 1, fontSize: 19.0),
                      ),
                    ),
                  ),
                  //padding: EdgeInsets.all(10),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                      height: 350,
                      width: 950,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/forget.gif"),
                            fit: BoxFit.fill,
                          )
                      )
                  ),
                ),

              ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
