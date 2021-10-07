import 'package:flutter/material.dart';
import 'package:newzi_world/favorite.dart';
import 'package:newzi_world/home.dart';
import 'package:newzi_world/login.dart';
import 'package:newzi_world/profile.dart';
import 'package:newzi_world/search.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({ Key? key }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

   Widget currentScreen = Home();
     var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageStorage(bucket: PageStorageBucket(),child: currentScreen,),
      bottomNavigationBar: BottomAppBar(
      color: Colors.purple,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.15,
              onPressed: (){
                setState(() {
                  currentScreen = Home();
                  _currentIndex = 0;
                });
              },
              textColor: _currentIndex ==0 ? Colors.white : Colors.white60,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: _currentIndex == 0 ? Colors.white : Colors.black,),
                  Text("Home")
                ],
              ),
              ),

              MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.15,
              onPressed: (){
                setState(() {
                  currentScreen = Search();
                  _currentIndex = 1;
                });
              },
              textColor: _currentIndex ==1 ? Colors.white : Colors.white60,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.search, color: _currentIndex == 1 ? Colors.white : Colors.black,),
                
                Text("Search"),
              ],) 
              ),

              MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.15,
              onPressed: (){
                setState(() {
                  currentScreen = Favorite();
                  _currentIndex = 2;
                });
              },
              textColor: _currentIndex ==2 ? Colors.white : Colors.white60,
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.favorite, color: _currentIndex == 2 ? Colors.white : Colors.black),
                  Text("Favorites"),
                ],
                ),
              ),

              MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.15,
              onPressed: (){
                setState(() {
                  currentScreen = Login();
                  _currentIndex = 3;
                });
              },
              textColor: _currentIndex ==3 ? Colors.white : Colors.white60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.lock_open, color: _currentIndex == 3 ? Colors.white : Colors.black,),
                  Text("Login")
                ],
              ),
              ),

              MaterialButton(
              minWidth: MediaQuery.of(context).size.width * 0.15,
              onPressed: (){
                setState(() {
                  currentScreen = Profile();
                  _currentIndex = 4;
                });
              },
              textColor: _currentIndex ==4 ? Colors.white : Colors.white60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Icon(Icons.person, color: _currentIndex == 4 ? Colors.white : Colors.black,),
                Text("Profile")
                ],
              ),
              ),
          ],
        ),
      ),
      ),

    );
  }
}