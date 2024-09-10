import 'package:caed/core/helpers/colors_helpers.dart';
import 'package:caed/core/models/packages_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageTabWidget extends StatelessWidget {
  const PackageTabWidget({Key? key, required this.packagesList})
      : super(key: key);

  final List<PackagesModel?> packagesList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ListView.builder(
        itemCount: packagesList.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              child: Row(
                children: [
                  const Icon(Icons.filter_list),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      'Lista de pacotes',
                      style:
                          GoogleFonts.sora(fontSize: 18, color: Colors.black),
                    ),
                  ),
                ],
              ),
            );
          }
          final itemIndex = index - 1;
          final item = packagesList[itemIndex];
          return Column(
            children: [
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      width: 0.5,
                      color: Color.fromARGB(255, 168, 168, 168),
                    ),
                    bottom: BorderSide(
                      width: 0.5,
                      color: Color.fromARGB(255, 168, 168, 168),
                    ),
                  ),
                ),
                child: ListTile(
                  subtitle: Row(
                    children: [
                      ...item!.status.map((e) {
                        return Row(
                          children: [
                            Container(
                              width: 50,
                              height: 10,
                              decoration: BoxDecoration(
                                color: ColorHelper.colors1[e.cod % ColorHelper.colors1.length],
                                borderRadius: const BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                            const SizedBox(width: 10),
                          ],
                        );
                      }).toList()
                    ],
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      item.cod,
                      style: GoogleFonts.sora(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      Modular.to.pushNamed(
                        '/home/details-page',
                        arguments: {'index': itemIndex, 'cod': item.cod},
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      color: Color.fromARGB(255, 168, 168, 168),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
