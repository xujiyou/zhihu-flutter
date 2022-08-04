import 'package:flutter/material.dart';
import 'package:zhihu/model/global_config.dart';

class SearchPage extends StatefulWidget{
  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {

  Widget searchInput() {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            child: FlatButton.icon(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_back, color: GlobalConfig.fontColor),
              label: Text(""),
            ),
            width: 60.0,
          ),
          Expanded(
            child: TextField(
              autofocus: true,
              decoration: InputDecoration.collapsed(
                  hintText: "搜索比乎内容",
                  hintStyle: TextStyle(color: GlobalConfig.fontColor)
              ),
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: GlobalConfig.themeData,
        home: Scaffold(
            appBar: AppBar(
            title: searchInput(),
          ),
            body: SingleChildScrollView(
              child: Column(
              children: <Widget>[
                  Container(
                    child: Text("比乎热搜",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                  margin: const EdgeInsets.only(top: 16.0, left: 16.0, bottom: 16.0),
                  alignment: Alignment.topLeft,
                ),
                  Row(
                  children: <Widget>[
                      Container(
                        child: Chip(
                          label: FlatButton(
                              onPressed: () {},
                              child: Text(
                                "汽车关税下调",
                                style: TextStyle(color: GlobalConfig.fontColor),
                              )),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                      Container(
                        child: Chip(
                          label: FlatButton(
                              onPressed: () {},
                              child: Text("李彦宏传闻辟谣",
                                  style: TextStyle(
                                      color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                  Row(
                  children: <Widget>[
                      Container(
                        child: Chip(
                          label: FlatButton(
                              onPressed: () {},
                              child: Text("小米8",
                                  style: TextStyle(
                                      color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                      Container(
                        child: Chip(
                          label: FlatButton(
                              onPressed: () {},
                              child: Text("超时空同居",
                                  style: TextStyle(
                                      color: GlobalConfig.fontColor))),
                        backgroundColor: GlobalConfig.dark == true ? Colors.white10 : Colors.black12,
                      ),
                      margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
                  Container(
                    child: Text("搜索历史",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0)),
                  margin: const EdgeInsets.only(left: 16.0, bottom: 16.0),
                  alignment: Alignment.topLeft,
                ),
                  Container(
                    child: Row(
                    children: <Widget>[
                        Container(
                          child: Icon(Icons.access_time,
                              color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                        Expanded(
                          child: Container(
                            child: Text(
                              "业余兴趣",
                              style: TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 14.0),
                            ),
                        ),
                      ),
                        Container(
                          child: Icon(Icons.clear,
                              color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: GlobalConfig.dark == true
                                    ? Colors.white12
                                    : Colors.black12))
                  ),
                ),
                  Container(
                    child: Row(
                    children: <Widget>[
                        Container(
                          child: Icon(Icons.access_time,
                              color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                        Expanded(
                          child: Container(
                            child: Text(
                              "三体",
                              style: TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 14.0),
                            ),
                        ),
                      ),
                        Container(
                          child: Icon(Icons.clear,
                              color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: GlobalConfig.dark == true
                                    ? Colors.white12
                                    : Colors.black12))
                  ),
                ),
                  Container(
                    child: Row(
                    children: <Widget>[
                        Container(
                          child: Icon(Icons.access_time,
                              color: GlobalConfig.fontColor, size: 16.0),
                        margin: const EdgeInsets.only(right: 12.0),
                      ),
                        Expanded(
                          child: Container(
                            child: Text(
                              "人类未来",
                              style: TextStyle(
                                  color: GlobalConfig.fontColor,
                                  fontSize: 14.0),
                            ),
                        ),
                      ),
                        Container(
                          child: Icon(Icons.clear,
                              color: GlobalConfig.fontColor, size: 16.0),
                      )
                    ],
                  ),
                  margin: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                    decoration: BoxDecoration(
                        border: BorderDirectional(
                            bottom: BorderSide(
                                color: GlobalConfig.dark == true
                                    ? Colors.white12
                                    : Colors.black12))
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
}