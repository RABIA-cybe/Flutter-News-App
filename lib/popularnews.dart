import 'package:flutter/material.dart';

class PopularNews extends StatefulWidget {
  const PopularNews({ Key? key }) : super(key: key);

  @override
  _PopularNewsState createState() => _PopularNewsState();
}

class _PopularNewsState extends State<PopularNews> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text("Popular news"),
    );
  }
}