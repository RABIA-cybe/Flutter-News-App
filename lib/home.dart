import 'package:flutter/material.dart';
import 'package:newzi_world/headlines.dart';
import 'package:newzi_world/popularnews.dart';
import 'package:newzi_world/sportsnews.dart';
import 'package:newzi_world/topstories.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:AppBar(
        title: Text(
          "NEWZI WORLD",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        bottom: TabBar(
          isScrollable: true,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: Colors.white,
          labelColor: Colors.yellow,
          indicatorColor: Theme.of(context).colorScheme.onPrimary,
          tabs: [
             Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Tab(child: Text("Top Stories")),
                 ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Tab(child: Text("Headlines")),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Tab(child: Text("Popular News")),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Tab(child: Text("Sports News")),
                  ),
          ],
          ),
          actions: [
              GestureDetector(onTap: () {}, child: Icon(Icons.login)),
              SizedBox(width: 10),
              // GestureDetector(onTap:(){},child: Icon(Icons.logout))
            ],
      ) ,

      body: TabBarView(children: [
          TopStories(),
          Headlines(),
          PopularNews(),
          SportsNews(),
        ]),
        ),
    );
  }
}