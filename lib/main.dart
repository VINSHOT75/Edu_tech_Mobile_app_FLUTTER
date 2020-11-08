import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:testing3/SplashScreen.dart';

void main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'tracit',
      home: Splash(),
    );
  }
}
