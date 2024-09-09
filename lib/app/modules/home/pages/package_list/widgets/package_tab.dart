import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PackageTabWidget extends StatelessWidget {
  const PackageTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView.builder(
          itemCount: 7,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                          width: 0.5,
                          color: Color.fromARGB(255, 168, 168, 168)),
                      bottom: BorderSide(
                          width: 0.5,
                          color: Color.fromARGB(255, 168, 168, 168)),
                    ),
                  ),
                  child: ListTile(
                    subtitle: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: 70,
                          height: 12,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          width: 70,
                          height: 12,
                          decoration: const BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                          ),
                        ),
                      ],
                    ),
                    title: const Padding(
                      padding: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        '160500003517-85',
                        style: TextStyle(fontSize: 19),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Modular.to.pushNamed('/home/details-page');
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
      ),
    );
  }
}
