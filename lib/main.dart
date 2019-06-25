import 'package:flutter/material.dart';

import './pages/home.dart';
void main(List<String> args) {
  runApp(new MyApp());
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      title: "Chat App",
      home: HomePage(),
    );
  }

}