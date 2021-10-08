import 'package:flutter/material.dart';

class PopularNews extends StatefulWidget {
  const PopularNews({ Key? key }) : super(key: key);

  @override
  _PopularNewsState createState() => _PopularNewsState();
}

class _PopularNewsState extends State<PopularNews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: [
          
        Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://ichef.bbci.co.uk/news/1024/branded_news/13CD/production/_120996050_tiwa.jpg",
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height ,),
                Expanded(
                  child: 
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     
                     Text("Nigeria's Tiwa Savage reveals sex tape blackmail", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     SizedBox(height: 20,),
                     Text("The Afrobeats star says she is refusing to pay up over a tape that was mistakenly put onto social media."),
                     SizedBox(height: 50,),
                     Align( alignment: Alignment.bottomLeft, child: Text(" 2 hours ago")),
                   ],
                  ),
                ),
            
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://ichef.bbci.co.uk/news/1024/branded_news/C6B6/production/_117307805_gettyimages-brazil-creditignaciopalacios-rightscleared.jpg", 
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height ,),
                Expanded(
                  child: 
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     
                     Text("Facebook to act on illegal sale of Amazon rainforest  ", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     SizedBox(height: 20,),
                     Text("The social network changes its policy following a BBC investigation. "),
                     SizedBox(height: 70,),
                     Align( alignment: Alignment.bottomLeft, child: Text(" 2 hours ago")),
                   ],
                  ),
                ),
            
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://ichef.bbci.co.uk/news/1024/branded_news/1FF2/production/_120887180_mediaitem120887176.jpg", 
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height ,),
                Expanded(
                  child: 
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     
                     Text("Rare Mughal era spectacles to be auctioned by Sotheby's", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     SizedBox(height: 20,),
                     Text("Two diamond and emerald spectacles from an unknown Indian princely treasury are to be sold in October."),
                     SizedBox(height: 50,),
                     Align( alignment: Alignment.bottomLeft, child: Text(" 3 hours ago")),
                   ],
                  ),
                ),
            
              ],
            ),
          ),

        
        Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://ichef.bbci.co.uk/news/1024/branded_news/4A7D/production/_120996091_gettyimages-1235763490-1.jpg",
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height ,),
                Expanded(
                  child: 
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     
                     Text("Afghanistan: Deadly attack hits Kunduz mosque during Friday prayers", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     SizedBox(height: 20,),
                     Text("A suicide bomber targets a mosque used by the minority Shia community in Kunduz during Friday prayers."),
                     SizedBox(height: 50,),
                     Align( alignment: Alignment.bottomLeft, child: Text(" 1 hours ago")),
                   ],
                  ),
                ),
            
              ],
            ),
          ),
      
        Container(
            decoration: BoxDecoration(border: Border.all(width: 1)),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Row(
              
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network("https://ichef.bbci.co.uk/news/1024/branded_news/83B3/production/_115651733_breaking-large-promo-nc.png",
                width: MediaQuery.of(context).size.width * 0.4 ,height: MediaQuery.of(context).size.height ,),
                Expanded(
                  child: 
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     
                     Text("Nobel Peace Prize: Journalists Maria Ressa and Dmitry Muratov win", style: TextStyle(color: Colors.purple, fontWeight: FontWeight.bold, fontSize: 20),),
                     SizedBox(height: 20,),
                     Text("The Philippine and Russian reporters win jointly for their fight to defend freedom of expression."),
                     SizedBox(height: 50,),
                     Align( alignment: Alignment.bottomLeft, child: Text(" 2 hours ago")),
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