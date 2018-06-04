import 'package:flutter/material.dart';

class NavigationIconView {

  NavigationIconView({
    Widget icon,
    Widget title,
    TickerProvider vsync
  }):
    item = new BottomNavigationBarItem(
      icon: icon,
      title: title,
    ),
    controller = new AnimationController(
      duration: kThemeAnimationDuration,
      vsync: vsync
    );

  final BottomNavigationBarItem item;
  final AnimationController controller;
}