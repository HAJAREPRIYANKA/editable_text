import 'package:flutter/cupertino.dart';
import 'package:editable_textfield_with_getx/controllers/EditTextControllre.dart';
import 'package:editable_textfield_with_getx/views/My_home_page.dart';
import 'package:get/get.dart';

class EditTextController extends GetxController{
  var editTextController = TextEditingController();

  bool isEditingTitle = false;
  RxString aString = ''.obs;

   @override
  void onInit() {
    super.onInit();
    editTextController = TextEditingController();
  }

  @override
  void onClose() {
    editTextController.dispose();
    super.onClose();
  }


   void updateString(String s) {
    aString.value = s;
  }

 /*
  void editText({String txt}) {
    editTextController.text = txt;
    isEditingTitle = true;
    update();
  }
  */


}