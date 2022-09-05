import 'dart:ffi';

import 'package:eduset/constants.dart';
import 'package:eduset/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Register.dart';
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
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Login background.png"),fit: BoxFit.cover,opacity: 1)
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          // shadowColor: Colors.red[200],
          elevation: 01,
          centerTitle: true,
          title: Text("Login",style: TextStyle(
            fontSize: 40,
            fontFamily: "Caviar",
            fontWeight: FontWeight.bold,
            color: Colors.white

          ),),
        ),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Center(
                    child: Form(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Container(
                            alignment: Alignment.center,

                            child: Text("EduSet",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.deepOrangeAccent,
                              fontFamily: "Mail",
                              letterSpacing: 2,
                            ),),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            height: 50,
                            width: 310,
                            decoration: BoxDecoration(

                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: TextFormField(

                              decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                  hintText: "Username",
                              ),
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
                            height: 50,
                            width: 310,
                            decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            margin: EdgeInsets.fromLTRB(15, 20, 15, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                  hintText: "Password",
                              ),
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
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            height: 1,
                            width: 310,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          ElevatedButton(
                              style: ButtonStyle(

                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.orangeAccent),
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

                              }, child: Text("Login",style: TextStyle(color: Colors.white,letterSpacing: 0.5),)),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 27),
                                  height: 50,
                                  width: 310,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: Colors.indigo[600],
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        margin: EdgeInsets.only(left: 10),
                                        child: Icon(Icons.facebook,color: Colors.white70,size: 30,),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 25),
                                        child: Text("Login with facebook",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.white70,
                                          ),),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                            }, child: Text("Don't have account ?")),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
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
