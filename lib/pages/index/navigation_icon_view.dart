import 'package:flutter/material.dart';

class NavigationIconView {

  NavigationIconView({
    Widget icon,
    String label,
    TickerProvider vsync
  }):
    item = BottomNavigationBarItem(
      icon: icon,
          label: label,
    ),
        controller = AnimationController(
      duration: kThemeAnimationDuration,
      vsync: vsync
    );

  final BottomNavigationBarItem item;
  final AnimationController controller;
}