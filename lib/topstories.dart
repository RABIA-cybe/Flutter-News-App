import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopStories extends StatefulWidget {
  const TopStories({ Key? key }) : super(key: key);

  @override
  _TopStoriesState createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: [
          Container(
            
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://i.guim.co.uk/img/media/a1d0b3fc6d90672ffe41c31e05664cba8e6751a4/0_345_4032_2418/master/4032.jpg?width=1200&quality=85&auto=format&fit=max&s=2b1eaa6288dae997f95a9e7c5d9fcaf2", 
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height * 0.3,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Authorities should keep  ", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     Text("the term ‘shark attack’  ", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     Text("Authorities should take care   "),
                     Text("not to remove “attack”  "),
                   ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://i.guim.co.uk/img/media/a1d0b3fc6d90672ffe41c31e05664cba8e6751a4/0_345_4032_2418/master/4032.jpg?width=1200&quality=85&auto=format&fit=max&s=2b1eaa6288dae997f95a9e7c5d9fcaf2", 
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height * 0.3,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Authorities should keep  ", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     Text("the term ‘shark attack’  ", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     Text("Authorities should take care   "),
                     Text("not to remove “attack”  "),
                   ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://i.guim.co.uk/img/media/a1d0b3fc6d90672ffe41c31e05664cba8e6751a4/0_345_4032_2418/master/4032.jpg?width=1200&quality=85&auto=format&fit=max&s=2b1eaa6288dae997f95a9e7c5d9fcaf2", 
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height * 0.3,),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Authorities should keep  ", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     Text("the term ‘shark attack’  ", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     Text("Authorities should take care   "),
                     Text("not to remove “attack”  "),
                   ],
                  ),
                ),
              ],
            ),
          ),
        ],),
    );
  }
}