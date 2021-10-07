import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({ Key? key }) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
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

      body: Text("Search"),
        
    );
  }
}