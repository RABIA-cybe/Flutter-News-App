import 'package:flutter/material.dart';
import 'package:newzi_world/bottomNavBar.dart';
import 'package:newzi_world/favorite.dart';
import 'package:newzi_world/home.dart';
import 'package:newzi_world/login.dart';
import 'package:newzi_world/profile.dart';
import 'package:newzi_world/search.dart';
//import 'package:newzi_world/signup.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  

   final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Container(child: Text("Error"),);
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
              return MaterialApp(
      debugShowCheckedModeBanner: false,
       theme: ThemeData(
    primarySwatch: Colors.purple,
  ),
     home: BottomNavBar(),
    );
          
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Container(child: Text("Loading"),);
      },
    );
 
 
 
 
 }
}

