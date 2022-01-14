import 'package:editable_textfield_with_getx/views/My_home_page.dart';
import 'package:editable_textfield_with_getx/views/Display.dart';
import 'package:editable_textfield_with_getx/views/EditedPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  const MyApp();

  @override 

  Widget build(BuildContext context) {
    // TODO: implement build
    
    
    return GetMaterialApp(

      title: 'flutter demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      routes: {
        '/display':(context)=>Display(),
        '/editedpage':(context)=>EditedPage()
      },

      home: MyHomePage(),
    );
  }
}