import 'package:caed/app/common_widgets/package_widgets.dart';
import 'package:caed/app/modules/home/pages/package_list/widgets/data_tab.dart';
import 'package:caed/app/modules/home/pages/package_list/widgets/package_tab.dart';
import 'package:caed/core/helpers/colors_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package_list_page_view_model.dart';
import 'widgets/status_tab.dart';

class PackageListPageView extends PackageListPageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Listagem de Pacotes",
          style: GoogleFonts.sora(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Observer(builder: (context) {
            return homeStateStore.isLoadingInfo == true
                ? SizedBox(
                    height: 300,
                    width: 500,
                    child: ListView.builder(
                      itemCount: homeStateStore.infoList.length,
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(10),
                      itemBuilder: (context, index) {
                        return PackageWidgets(
                            info: homeStateStore.infoList[index]);
                      },
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 300,
                      width: 500,
                      decoration: const BoxDecoration(
                        color: Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Center(
                        child: CircularProgressIndicator(
                          color: ColorHelper.timeLineColors2(),
                        ),
                      ),
                    ),
                  );
          }),
          TabBar(
            controller: tabController,
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: const Color.fromARGB(255, 156, 156, 156),
            tabs: const [
              Tab(text: 'Pacotes'),
              Tab(text: 'Status'),
              Tab(text: 'Dados'),
            ],
          ),
          Observer(builder: (context) {
            return homeStateStore.isLoadingPackage == true
                ? Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        PackageTabWidget(
                            packagesList: homeStateStore.packagesList),
                        TimelineWidget(
                            package: homeStateStore.packagesList.first),
                        DataTab(package: homeStateStore.packagesList.first),
                      ],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(
                        color: ColorHelper.timeLineColors2()));
          }),
        ],
      ),
    );
  }
}
