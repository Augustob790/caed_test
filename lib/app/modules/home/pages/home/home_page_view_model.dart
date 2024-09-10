import 'package:caed/app/modules/home/pages/home/home_page.dart';
import 'package:caed/app/modules/home/pages/package_list/package_list_page.dart';
import 'package:flutter/material.dart';

abstract class HomePageViewModel extends State<HomePage> {
  PageController pageController = PageController();

  int currentIndex = 0;
  List<Widget> pages = [
    const PackageListPage(),
    // const OptionsScreen(),
    // const TutorialsScreen(),
  ];


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
