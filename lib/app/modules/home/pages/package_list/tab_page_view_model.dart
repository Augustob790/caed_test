import 'package:caed/app/modules/home/pages/package_list/tab_page.dart';
import 'package:flutter/material.dart';

abstract class TabPageViewModel extends State<TabPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }


double screenWidthPercentage(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * (percentage / 100);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
