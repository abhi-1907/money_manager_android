import 'package:flutter/material.dart';
import 'package:sample/screens/home/screen_home.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({Key? key}):super(key: key);

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Money Management app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.purple,
        ),
      ),
      home: const ScreenHome(),
    );
  }
}