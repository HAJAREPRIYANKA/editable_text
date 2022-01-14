import 'dart:ui';
import 'package:editable_textfield_with_getx/controllers/EditTextControllre.dart';
import 'package:editable_textfield_with_getx/views/EditedPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Display extends StatelessWidget{

  final EditTextController controller = Get.put(EditTextController());
   //final EditTextController controller1 = Get.find();
  final textController = TextEditingController();

  @override 

  Widget build(BuildContext context) {
    // TODO: implement build

    
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text(
              '${controller.aString.value}',
              style: TextStyle(color: Colors.amber)
            ),
 
 
            ),

            SizedBox(height: 15,),
           
                 FlatButton(onPressed: () {
                   print(controller.aString.value.toString());
                   Get.toNamed('/editedpage', arguments: {"data": controller.aString.value.toString()});
                   
              } , child: Text("Edit profile",style: TextStyle(color: Colors.white),),color: Colors.blue,),
            

          ],
        ) ,),
    );
  }
}

  