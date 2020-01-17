import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black.withOpacity(0.0),
        elevation: 0,
        title: Text(
          'instagram',
              style: TextStyle(fontSize: 25.0,fontFamily: 'billabong'),
        ),
        bottom: PreferredSize(
          child: Container(
            height: 1.0,
            color: Colors.grey[800],
          ),
          preferredSize: Size.fromHeight(1.0),
        ),
          leading: IconButton(
            onPressed: (){},
            icon : Icon(MdiIcons.cameraOutline),
            iconSize:32.0 ,
          ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(MdiIcons.send),
              iconSize: 32.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text("Stories",
                  style: TextStyle(
                    fontSize: 14.0 , fontWeight: FontWeight.bold
                  )
                  )
                ),
                Icon(
                  MdiIcons.menuRight,
                  size: 25.0,
                ),
                Text('Watch all',style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0
                ))
              ],
            ),
            ),
            Container(
              width: double.infinity,
              height: 110.0,
              child: Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left:10.0),
                      child:  StoriesImages(),
                    ),
                  ],
                ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}


class StoriesImages extends StatelessWidget {
  final String image;
  final String userName;

  StoriesImages({this.image,this.userName});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right:25.0),
      child: Column(
        children: <Widget>[
          Container(
            child: Container(
              child: CircleAvatar(
                backgroundColor: Colors.cyan,
              ),
              width: 65.0,
              height: 65.0,
              padding: EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                  color: ThemeData.dark().canvasColor,
                  shape: BoxShape.circle

              ),



            ),
            width: 65.0,
            height: 65.0,
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1,0.1,0.5,0.8],
                  colors:  [
                    Color.fromRGBO(79, 91, 213, 1),
                    Color.fromRGBO(150, 47, 191, 1),
                    Color.fromRGBO(214, 41, 118, 1),
                    Color.fromRGBO(250, 126, 30, 1),
                  ]
              ),
              shape: BoxShape.circle),
            ),
            SizedBox(height: 5.0),
            Text(
            userName , style: TextStyle(fontSize: 14.0),
            ),
        ],
      ),
    );
  }

}