import 'package:caed/app/modules/home/pages/details/details_page_view_model.dart';
import 'package:caed/app/modules/home/pages/package_list/widgets/status_tab.dart';
import 'package:flutter/material.dart';

class DetailsPageView extends DetailsPageViewModel {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Número de abas
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text("Pacote"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.blue,
            tabs: [
              Tab(text: "Status"),
              Tab(text: "Dados"),
            ],
          ),
        ),
        body:  TabBarView(
          children: [
            Center(child: TimelineWidget(events: events)),
            Container(),
          ],
        ),
      ),
    );
  }
}
