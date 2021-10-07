
import 'package:flutter/material.dart';
import 'package:newzi_world/login.dart';
//import 'package:newzi_world/signup.dart';



class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NEWZI WORLD",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child: Text(
                'Forgot Password',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
        
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Email Id',
                prefixIcon: Icon(Icons.email , color: Colors.purple,)
              ),
            ),
          ),
          
          Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  primary: Colors.purple,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                child: Text('Submit'),
                onPressed: () {
                  
                },
              )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Back to "),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Login()));
                  },
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.purple),
                  ),
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
