import 'package:eduset/Utils/utils.dart';
import 'package:eduset/database/mysql.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
  FirebaseAuth _auth = FirebaseAuth.instance;
  var db = new Mysql();
  final formkey = GlobalKey<FormState>();
  final formkey1 = GlobalKey<FormState>();
  bool _isVisible = true;
  bool _isVisible1 = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
  }

  void login(){
    setState(() {
      loading = true;
    });
    _auth.createUserWithEmailAndPassword(
        email: emailController.text.toString(),
        password: passwordController.text.toString()).then((value){
      setState(() {
        loading = false;
      });
    }).onError((error, stackTrace){
      utils().toastMessage(error.toString());
      setState(() {
        loading = false;
      }
      );
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/Login background.png"),
              fit: BoxFit.cover)),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 1,
            title: Text(
              "Register",
              style: TextStyle(
                  color: Colors.white, fontSize: 40, fontFamily: "Caviar"),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            "EduSet",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.deepOrangeAccent,
                              fontFamily: "Mail",
                              letterSpacing: 2,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "Enter your name",
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "Enter Phone Number",
                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              hintText: "Enter Email ID",
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
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Form(
                            key: formkey,
                            child: TextFormField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isVisible = !_isVisible;
                                      });
                                    },
                                    icon: _isVisible
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: "Set Password",
                              ),
                              validator: (value){
                                if(value!.isEmpty){
                                  return "Enter Password";
                                }
                                else{
                                  return null;
                                }
                              },
                              obscureText: _isVisible,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 50,
                          width: 310,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Form(
                            key: formkey1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        _isVisible1 = !_isVisible1;
                                      });
                                    },
                                    icon: _isVisible1
                                        ? Icon(Icons.visibility_off)
                                        : Icon(Icons.visibility)),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                hintText: "Confirm Password",
                              ),
                              obscureText: _isVisible1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
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
                        )
                      ],
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
}
