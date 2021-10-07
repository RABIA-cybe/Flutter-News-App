import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
        appBar:AppBar(
        title: Text(
          "NEWZI WORLD",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
     
      ) ,

      body: Text("Profile"),
      
    );
  }
  }