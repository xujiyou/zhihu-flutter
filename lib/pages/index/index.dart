import 'package:flutter/material.dart';
import 'package:zhihu/model/global_config.dart';
import 'package:zhihu/pages/home/home_page.dart';
import 'package:zhihu/pages/idea_page.dart';
import 'package:zhihu/pages/market_page.dart';
import 'package:zhihu/pages/my_page.dart';
import 'package:zhihu/pages/notice_page.dart';
import 'navigation_icon_view.dart';

class Index extends StatefulWidget {
  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> with TickerProviderStateMixin {
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews;
  List<StatefulWidget> _pageList;
  StatefulWidget _currentPage;

  @override
  void initState() {
    super.initState();
    _navigationViews = <NavigationIconView>[
      NavigationIconView(
        icon: Icon(Icons.assignment),
        label: "首页",
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.all_inclusive),
        label: "想法",
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.add_shopping_cart),
        label: "市场",
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.add_alert),
        label: "通知",
        vsync: this,
      ),
      NavigationIconView(
        icon: Icon(Icons.perm_identity),
        label: "我的",
        vsync: this,
      ),
    ];
    for (NavigationIconView view in _navigationViews) {
      view.controller.addListener(_rebuild);
    }

    _pageList = <StatefulWidget>[
      HomePage(),
      IdeaPage(),
      MarketPage(),
      NoticePage(),
      // MyPage()
    ];
    _currentPage = _pageList[_currentIndex];
  }

  void _rebuild() {
    setState(() {});
  }

  @override
  void dispose() {
    super.dispose();
    for (NavigationIconView view in _navigationViews) {
      view.controller.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    final BottomNavigationBar bottomNavigationBar = BottomNavigationBar(
        items: _navigationViews
            .map((NavigationIconView navigationIconView) =>
                navigationIconView.item)
            .toList(),
        currentIndex: _currentIndex,
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _navigationViews[_currentIndex].controller.reverse();
            _currentIndex = index;
            _navigationViews[_currentIndex].controller.forward();
            _currentPage = _pageList[_currentIndex];
          });
        });

    return MaterialApp(
        home: Scaffold(
          body: Center(child: _currentPage),
          bottomNavigationBar: bottomNavigationBar,
        ),
        theme: GlobalConfig.themeData);
  }
}
