import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class utils{
  void toastMessage(String message){
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 3,
        backgroundColor: Colors.white,
        textColor: Colors.red,
        fontSize: 16.0
    );
  }
}