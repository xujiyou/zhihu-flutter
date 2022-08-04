import 'package:flutter/material.dart';

class NavigationIconView {

  NavigationIconView({
    Widget icon,
    Widget title,
    TickerProvider vsync
  }):
    item = BottomNavigationBarItem(
      icon: icon,
      title: title,
    ),
        controller = AnimationController(
      duration: kThemeAnimationDuration,
      vsync: vsync
    );

  final BottomNavigationBarItem item;
  final AnimationController controller;
}