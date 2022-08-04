import 'package:flutter/material.dart';
import 'index/index.dart';

void main() => runApp(ZhiHu());

class ZhiHu extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "知乎-高仿版",
      home: Index(),
    );
  }
}
