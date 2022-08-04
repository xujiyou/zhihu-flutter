import 'package:flutter/material.dart';
import '../global_config.dart';

class IdeaPage extends StatefulWidget {

  @override
  _IdeaPageState createState() => new _IdeaPageState();

}

class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: new AppBar(
            title: new Text('想法'),
            actions: <Widget>[
              new Container(

              )
            ],
          ),
          body: new Center(
              child: null
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}