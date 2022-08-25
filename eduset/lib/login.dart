import 'dart:ffi';

import 'package:eduset/constants.dart';
import 'package:eduset/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  String userName = "";
  String passWord = "";

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(
      //     image: DecorationImage(image: AssetImage("assets/images/iron man2.png"),fit: BoxFit.cover)
      // ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // shadowColor: Colors.red[200],
          elevation: 30,
          centerTitle: true,
          title: Text("Login",style: TextStyle(
          ),),
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: SingleChildScrollView(
            child: Center(
              child: Form(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: TextFormField(

                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            label: Text("Username",style: TextStyle(),)),
                        onChanged: (username){
                          setState(() {
                            userName = username;
                          });
                        },
                        onFieldSubmitted: (username){
                          setState(() {
                            userName = username;
                          });
                        },
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                            label: Text("Password",style: TextStyle())),
                        onChanged: (password){
                          setState(() {
                            passWord = password;
                          });
                        },
                        onFieldSubmitted: (password){
                          passWord = password;
                        },
                      ),
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.cyan.shade100),
                            shape: MaterialStateProperty.all<OutlinedBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),topRight: Radius.circular(15))))
                        ),
                        onPressed: (){
                          print("UserName : $userName\nPassWord : $passWord");
                          if(userName == AppConstant.userName && passWord==AppConstant.passWord){
                            showPopup(true);
                          }
                          else{
                            showPopup(false);
                          }

                        }, child: Text("Login",style: TextStyle(color: Colors.red.shade300,letterSpacing: 0.5),))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  showPopup(bool flag){
    return showDialog(barrierDismissible: false,
        context: context,
        builder: (BuildContext context) => AlertDialog(
          backgroundColor: Colors.orange[300],
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),
              topRight: Radius.circular(15))),
          title: Text("Login"),
          content: (flag==true)?Text("Login Succeeful"):Text("Login Failed. Try Again"),
          actions: <Widget>[
            ElevatedButton(
                onPressed: () {
                  if(flag==true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen(),));
                  }
                  else{
                    Navigator.pop(context);
                  }
                },
                child: const Text("Okay",style: TextStyle(
                ),))
          ],
        )
    );
  }
}
