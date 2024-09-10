import 'package:caed/app/modules/home/home_state_store.dart';
import 'package:caed/app/modules/home/pages/package_list/package_list_page.dart';
import 'package:caed/core/models/timeline_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class PackageListPageViewModel extends State<PackageListPage> with TickerProviderStateMixin {
  HomeStateStore homeStateStore = Modular.get<HomeStateStore>();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    getAllInfo();
    getAllPackages();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  getAllInfo() async {
    await homeStateStore.getInfo();
  }

  getAllPackages() async {
    await homeStateStore.getPackages();
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
