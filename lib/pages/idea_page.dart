import 'package:flutter/material.dart';
import '../global_config.dart';

class IdeaPage extends StatefulWidget {

  @override
  _IdeaPageState createState() => _IdeaPageState();

}

class _IdeaPageState extends State<IdeaPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('想法'),
            actions: <Widget>[
              Container(

              )
            ],
          ),
          body: Center(
              child: null
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}