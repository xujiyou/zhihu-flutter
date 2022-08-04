import 'package:flutter/material.dart';
import 'package:zhihu/model/global_config.dart';
import 'follow.dart';
import 'recommend.dart';
import 'hot.dart';
import 'search_page.dart';
import 'ask_page.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();

}

class _HomePageState extends State<HomePage> {

  Widget barSearch() {
    return Container(
        child: Row(
        children: <Widget>[
            Expanded(
                child: FlatButton.icon(
                onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(
                    builder: (context) {
                  return SearchPage();
                    }
                  ));
                },
              icon:
                  Icon(
                  Icons.search,
                  color: GlobalConfig.fontColor,
                  size: 16.0
                ),
              label: Text(
                  "坚果R1摄像头损坏",
                style: TextStyle(color: GlobalConfig.fontColor),
                ),
              )
          ),
            Container(
              decoration: BoxDecoration(
                  border: BorderDirectional(
                      start: BorderSide(
                          color: GlobalConfig.fontColor, width: 1.0)
                )
            ),
            height: 14.0,
            width: 1.0,
          ),
            Container(
                child: FlatButton.icon(
              onPressed: (){
                Navigator.of(context)
                    .push(MaterialPageRoute(
                  builder: (context) {
                  return AskPage();
                  }
                ));
              },
              icon: Icon(
                Icons.border_color,
                color: GlobalConfig.fontColor,
                size: 14.0
              ),
              label: Text(
                "提问",
                style: TextStyle(color: GlobalConfig.fontColor),
              ),
            )
          )
        ],
      ),
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(const Radius.circular(4.0)),
        color: GlobalConfig.searchBackgroundColor,
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
      child: Scaffold(
        appBar: AppBar(
            title: barSearch(),
          bottom: TabBar(
            labelColor:
                GlobalConfig.dark == true ? Color(0xFF63FDD9) : Colors.blue,
              unselectedLabelColor: GlobalConfig.dark == true ? Colors.white : Colors.black,
              tabs: [
              Tab(text: "关注"),
              Tab(text: "推荐"),
              Tab(text: "热榜"),
              ],
            ),
          ),
        body: TabBarView(
              children: [
                Follow(), Recommend(), Hot()
              ]
          ),
        ),
    );
  }

}