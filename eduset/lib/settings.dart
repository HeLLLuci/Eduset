import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/Login background.png"),fit: BoxFit.cover,opacity: 1)
    ),
    child: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 10,top: 10),
                    child: Container(
                      alignment: Alignment.center,
                        child: Icon(UniconsLine.align_left,size: 30,)),
                  ),
                  SizedBox(
                    width: 180,
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                    ),
                    child: Icon(Icons.notifications_sharp),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.blue,
                    backgroundImage: AssetImage("assets/images/profile3d.png"),
                  )
                ],
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 130,
                    width: 130,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color:Colors.white70,
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black26),
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 0, top: 30),
                            child: Icon(Icons.account_circle_outlined,size: 40,color: Colors.black,)
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0,top: 10),
                          child: Text("Profile",
                            style: TextStyle(
                                fontFamily: "Caviar",
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 130,
                    width: 130,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black26)
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 0, top: 30),
                            child: Icon(Icons.notifications_off,size: 40,color: Colors.black,)
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0,top: 10),
                          child: Text("Notifications",
                          style: TextStyle(
                           fontFamily: "Caviar",
                           fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold
                          ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 130,
                    width: 130,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color:Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black26)
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 0, top: 30),
                            child: Icon(Icons.brush_outlined,size: 40,color: Colors.black,)
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0,top: 10),
                          child: Text("Theme",
                            style: TextStyle(
                                fontFamily: "Caviar",
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 130,
                    width: 130,
                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(
                        color: Colors.white70,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black26)
                    ),
                    child: Column(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 0, top: 30),
                            child: Icon(Icons.language_rounded,size: 40,color: Colors.black,)
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 0,top: 10),
                          child: Text("Language",
                            style: TextStyle(
                                fontFamily: "Caviar",
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      alignment: Alignment.center,
                      height: 60,
                      width: 295,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey, width: 1)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      alignment: Alignment.center,
                      height: 80,
                      width: 295,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      alignment: Alignment.center,
                      height: 80,
                      width: 295,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      alignment: Alignment.center,
                      height: 80,
                      width: 295,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 5, bottom: 10),
                      alignment: Alignment.center,
                      height: 60,
                      width: 295,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ],
                )
              )
            ],
          ),
        ),
      ),
    )
    );
  }
}
