import 'package:flutter/material.dart';

// import 'package:registration_practice/login.dart';
import 'package:registration_practice/registration.dart';
// import 'package:registration_practice/login.dart';
//import 'package:registration_practice/registration.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Registration(),
    );
  }
}