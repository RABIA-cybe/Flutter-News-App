import 'package:flutter/material.dart';

class Headlines extends StatefulWidget {
  const Headlines({ Key? key }) : super(key: key);

  @override
  _HeadlinesState createState() => _HeadlinesState();
}

class _HeadlinesState extends State<Headlines> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text("headlines"),
    );
  }
}