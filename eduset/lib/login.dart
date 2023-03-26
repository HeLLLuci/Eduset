import 'dart:ffi';

import 'package:eduset/Utils/utils.dart';
import 'package:eduset/constants.dart';
import 'package:eduset/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Register.dart';
import 'main.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loading = false;
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _auth = FirebaseAuth.instance;

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
  }

  void login(){

    setState(() {
      loading = true;
    });
    _auth.signInWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString()).then((value){
          utils().toastMessage("Welcome");
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
          setState(() {
            loading = false;
          });
    }).onError((error, stackTrace){
      debugPrint(error.toString());
      utils().toastMessage(error.toString());
      setState(() {
        loading = false;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/Login background.png"),fit: BoxFit.cover,opacity: 1)
      ),
      child: WillPopScope(
        onWillPop: ()async{
          SystemNavigator.pop();
          return true;
        },
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
                        key: _formKey,
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
                                controller: emailController,
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                    hintText: "Enter Your Email",
                                ),
                                validator: (value){
                                  if(value!.isEmpty){
                                    return "Enter Email";
                                  }
                                  else{
                                    return null;
                                  }
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
                                controller: passwordController,
                                obscureText: true,
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                                    hintText: "Enter Password",
                                ),
                                validator: (value){
                                  if(value!.isEmpty){
                                    return "Enter Password";
                                  }
                                  else{
                                    return null;
                                  }
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
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              },
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                    color: Colors.orangeAccent),
                                child: Center(
                                  child: loading ? CircularProgressIndicator(
                                    color: Colors.white,
                                    strokeWidth: 1,
                                  ) : TextButton(
                                      onPressed: () {
                                        if(_formKey.currentState!.validate()){
                                          login();
                                        }
                                      },
                                      child: Text(
                                        "Submit",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      )),
                                ),
                              ),
                            ),
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
