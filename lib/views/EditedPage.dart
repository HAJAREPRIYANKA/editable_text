import 'package:editable_textfield_with_getx/views/Display.dart';
import 'package:editable_textfield_with_getx/controllers/EditTextControllre.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class EditedPage extends StatelessWidget{

   final EditTextController controller = Get.put(EditTextController());
   //final EditTextController controller1 = Get.find();
    final textController = TextEditingController();

    

  @override

  Widget build(BuildContext context) {
    // TODO: implement build

    textController.text = Get.parameters['data'] ?? 'empty';
    
    return  Scaffold(
      appBar: AppBar(
        title: Text("updation done here"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
           
             TextField(
                 controller: textController,
              onChanged: (_) {
            controller.updateString(textController.text);
          },
               ),
           
              FlatButton(onPressed: (){
                    Get.toNamed('/display');
                    },
              child: Text("save changes",style: TextStyle(color: Colors.white),),color: Colors.blue,),
           
          ],
        ),
      ),
    );
  }
}

