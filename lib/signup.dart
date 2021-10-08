import 'package:flutter/material.dart';
import 'package:newzi_world/login.dart';
import 'package:validators/validators.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore db = FirebaseFirestore.instance;

final TextEditingController usernameController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController confirmpasswordController = TextEditingController();
// void confirmation(){
//  String password = passwordController.text;
//  String confirmpassword = confirmpasswordController.text;

//  if (confirmpassword == password) {
//   signup();
//  }
//  else if (confirmpassword != password) {
//    showDialog(context: context, builder: (BuildContext context){
//     return AlertDialog(content: Text( "Password did not matched to the confirm password field. Try Again "),); });
//  } 
   
// }

void signup() async{
 final String username = usernameController.text;
    final String email = emailController.text;
    final String password = passwordController.text;
    String confirmpassword = confirmpasswordController.text;

  try {
     if (confirmpassword == password) {
  signup();
 }
 else if (confirmpassword != password) {
   showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(content: Text( "Password did not matched to the confirm password field. Try Again "),); });
 } 

     final UserCredential user = await auth.createUserWithEmailAndPassword(email: email, password: password);
    await db.collection("users").doc(user.user.uid).set({
       "email": emailController.text,
       "username": usernameController.text,
     });
     
     print("user is registered");
     showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(content: Text( "Successfully Registered. "),);
  });
    } 
    
    on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
    print('The password provided is too weak.');
  } else if (e.code == 'email-already-in-use') {
    print('The account already exists for that email.');
  }
showDialog(context: context, builder: (BuildContext context){
    return AlertDialog(content: Text('$e' " Please Try Again"),);
  });

} 

catch (e) {
  print(e);
}
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
                'Create Account,',
                style: TextStyle(
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              )),
          Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 50),
              child: Text(
                'Sign up to get started',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              )),
          Container(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'User Name',
                prefixIcon: Icon(Icons.person , color: Colors.purple,)
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
             controller: emailController,
              validator: (val) => !isEmail(val) ? "Invalid Email" : null,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Email Id',
                prefixIcon: Icon(Icons.email , color: Colors.purple,),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock , color: Colors.purple,),
              ),
            ),
          ),
           Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: TextField(
              controller: confirmpasswordController,
              obscureText: true,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                labelText: 'Confirm Password',
                prefixIcon: Icon(Icons.lock , color: Colors.purple,),
              ),
            ),
          ),
          Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.purple,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                child: Text('Sign Up'),
                onPressed: signup,
              )),
            //   SizedBox(height: 20,),
            //   ConstrainedBox(
              
            //   constraints: BoxConstraints.tightFor(width: 50, height: 50),
            //   child: ElevatedButton(
                
            //     child: Text('Button', style: TextStyle(fontSize: 14),),
            //     onPressed: () {},
            //     style: ElevatedButton.styleFrom(
            //       shape: CircleBorder(),
            //     ),
            //   ),
            // ),
               Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("I am already a member."),
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