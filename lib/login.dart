
import 'package:flutter/material.dart';
import 'package:newzi_world/forgot_pass.dart';
import 'package:newzi_world/signup.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Welcome,',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                'Sign in to continue',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'User Name',
                prefixIcon: Icon(Icons.person , color: Colors.purple,)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
             obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock , color: Colors.purple,)
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ForgotPass()));
            },
            style: TextButton.styleFrom(
              textStyle: TextStyle(color: Colors.purple),
            ),
            child: Text('Forgot Password'),
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
                child: Text('Login'),
                onPressed: () {
                  // print(nameController.text);
                  // print(passwordController.text);
                },
              )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                  },
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.purple),
                  ),
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
