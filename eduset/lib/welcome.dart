import 'package:eduset/Register.dart';
import 'package:eduset/home_screen.dart';
import 'package:eduset/login.dart';
import 'package:eduset/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.deepOrange,
          Colors.yellow,
        ],
        begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20,top: 20),
                    alignment: Alignment.topLeft,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.settings),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 3,color: Colors.white)
                  ),
                  // margin: EdgeInsets.only(left),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 80,
                    backgroundImage: AssetImage("assets/images/collaboration.png"),

                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.orange,width: 3),
                      color: Colors.white
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      }, child: Text("Login",style:
                        TextStyle(
                          fontSize: 25,
                          fontFamily: "Caviar"
                        ),))
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Container(
                    alignment: Alignment.centerRight,
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 2),
                        color: Colors.transparent,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                      }, child: Text("Resgister Now",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Caviar"
                      ),)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 0),
                  alignment: Alignment.center,
                  child: TextButton(

                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      }, child: Text("Continue as Guest",
                  style: TextStyle(
                    fontFamily: "Caviar",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  )
                  ),
                ),
                Container(
                  height: 1,
                  width: 120,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text("Quickly login with Bio-ID",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontFamily: "Caviar"
                  ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onLongPress: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                      },
                      child: Icon(Icons.fingerprint_outlined,size: 60,color: Colors.white,)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
