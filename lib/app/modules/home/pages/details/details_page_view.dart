import 'package:caed/app/modules/home/pages/details/details_page_view_model.dart';
import 'package:caed/app/modules/home/pages/package_list/widgets/data_tab.dart';
import 'package:caed/app/modules/home/pages/package_list/widgets/status_tab.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPageView extends DetailsPageViewModel {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Número de abas
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          title: Text(
            "Pacote ${widget.cod}",
            style: GoogleFonts.sora(
              fontSize: 18,
              color: Colors.black),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: const TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.black,
            unselectedLabelColor: Color.fromARGB(255, 156, 156, 156),
            tabs: [
              Tab(text: "Status"),
              Tab(text: "Dados"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
                  child: Text(
                    "Status do pacote",
                    style: GoogleFonts.sora(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
                TimelineWidget(
                  package: homeStateStore.packagesList[widget.index],
                )
              ],
            ),
            DataTab(
              package: homeStateStore.packagesList[widget.index],
            ),
          ],
        ),
      ),
    );
  }
}
