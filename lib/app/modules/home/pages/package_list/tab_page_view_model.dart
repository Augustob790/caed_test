import 'package:caed/app/modules/home/pages/package_list/tab_page.dart';
import 'package:caed/core/models/timeline_model.dart';
import 'package:flutter/material.dart';

abstract class TabPageViewModel extends State<TabPage> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  double screenWidthPercentage(BuildContext context, double percentage) {
    return MediaQuery.of(context).size.width * (percentage / 100);
  }

    List<TimelineEvent> events = [
      TimelineEvent(date: DateTime.now().subtract(const Duration(days: 1)), description: "Coordenador registrou recebimento deste pacote"),
      TimelineEvent(date: DateTime.now(), description: "Coordenador registrou devolução deste pacote"),
      TimelineEvent(date: DateTime.now(), description: "Coordenador registrou devolução deste pacote"),
      TimelineEvent(date: DateTime.now(), description: "Coordenador registrou devolução deste pacote"),
      TimelineEvent(date: DateTime.now(), description: "Coordenador registrou devolução deste pacote"),
      TimelineEvent(date: DateTime.now(), description: "Coordenador registrou devolução deste pacote"),
      TimelineEvent(date: DateTime.now(), description: "Coordenador registrou devolução deste pacote"),
    ];
}
