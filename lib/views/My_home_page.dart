import 'package:editable_textfield_with_getx/controllers/EditTextControllre.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget{

  
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
        children: <Widget>[
          Container(
            child: TextField(
              controller: textController,
              onChanged: (_) {
            controller.updateString(textController.text);
          },
            ),
            padding: EdgeInsets.all(30),
            ),

             Container(
                width: double.infinity,
               child: FlatButton(
                 child: Text("See profile"),
                 color: Colors.amber,
                 onPressed: (){
                    Get.toNamed('/display');
                    },
                    ),
                      padding: EdgeInsets.all(30),
                 
                   
                 ),
              
             
        ],
      ),),
    );
  }
}