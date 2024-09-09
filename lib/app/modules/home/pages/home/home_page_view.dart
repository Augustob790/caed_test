import 'package:flutter/material.dart';

import 'home_page_view_model.dart';

class HomePageView extends HomePageViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dogs List"),
        backgroundColor: Colors.amber,
      ),
      body: const Column(
        children: [
          // Observer(
          //   builder: (context) {
          //     return Expanded(
          //       child: ListView.builder(
          //         itemCount: homeStateStore.listDogs.length,
          //         itemBuilder: (context, index) {
          //           final dog = homeStateStore.listDogs[index];
          //           return Container(
          //             padding: const EdgeInsets.all(4),
          //             margin: const EdgeInsets.all(5),
          //             decoration:  BoxDecoration(
          //               color: Colors.amberAccent,
          //               borderRadius: BorderRadius.circular(10)
          //             ),
          //             child: Padding(
          //               padding: const EdgeInsets.all(8.0),
          //               child: Text(
          //                 dog?.name ?? "",
          //                 style: const TextStyle(
          //                   color: Colors.black,
          //                   fontSize: 15,
          //                   fontWeight: FontWeight.w400,
          //                 ),
          //               ),
          //             ),
          //           );
          //         },
          //       ),
          //     );
          //   }
          // ),
        ],
      ),
    );
  }
}
