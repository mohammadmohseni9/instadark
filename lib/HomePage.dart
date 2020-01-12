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
    );
  }
}