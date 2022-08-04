import 'package:flutter/material.dart';
import 'package:zhihu/pages/index/index.dart';

void main() => runApp(ZhiHu());

class ZhiHu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "知乎-高仿版",
      home: Index(),
    );
  }
}
