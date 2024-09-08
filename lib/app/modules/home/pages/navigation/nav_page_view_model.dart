import 'package:caed/app/modules/home/pages/navigation/nav_page.dart';
import 'package:caed/app/modules/home/pages/navigation/nav_page_view.dart';
import 'package:caed/app/modules/home/pages/package_list/tab_page.dart';
import 'package:flutter/material.dart';

abstract class NavPageViewModel extends State<NavPage> {
  PageController pageController = PageController();

  int currentIndex = 0;
  List<Widget> pages = [
    const TabPage(),
    const OptionsScreen(),
    const TutorialsScreen(),
  ];


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
