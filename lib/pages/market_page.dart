import 'package:flutter/material.dart';
import '../global_config.dart';

class MarketPage extends StatefulWidget {

  @override
  _MarketPageState createState() => _MarketPageState();

}

class _MarketPageState extends State<MarketPage> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('市场'),
          ),
          body: Center(
              child: null
          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}