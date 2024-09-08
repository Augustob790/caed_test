import 'package:caed/app/common_widgets/package_widgets.dart';
import 'package:flutter/material.dart';

import 'tab_page_view_model.dart';

class TabPageView extends TabPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Listagem de Pacotes"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 300,
            width: 500,//screenWidthPercentage(context, 90),
            child: ListView.builder(
              itemCount: 2,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return const PackageWidgets(name: 'Recebimento de pacotes');
              },
            ),
          ),
          TabBar(
            controller: tabController,
            labelColor: Colors.blue,
            unselectedLabelColor: const Color.fromARGB(255, 156, 156, 156),
            tabs: const [
              Tab(text: 'Pacotes'),
              Tab(text: 'Status'),
              Tab(text: 'Dados'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: const [
                Center(child: Text('Conteúdo da aba Pacotes')),
                Center(child: Text('Conteúdo da aba Status')),
                Center(child: Text('Conteúdo da aba Dados')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
