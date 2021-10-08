
import 'package:flutter/material.dart';
import 'package:newzi_world/forgot_pass.dart';
import 'package:newzi_world/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore db = FirebaseFirestore.instance;

final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

void signin() async {
  final String email = emailController.text;
    final String password = passwordController.text;

  try {
   final UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: email,
    password: password
  );
  print("succesfully logged in");
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');

  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  }
  showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(content: Text('$e' " Please Try Again"),);
  });
} catch(e){ print("error");}
}



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
              controller: emailController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Email',
                prefixIcon: Icon(Icons.person , color: Colors.purple,)
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              controller: passwordController,
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
                onPressed: signin
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
