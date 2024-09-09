import 'package:flutter/material.dart';

class PackageWidgets extends StatelessWidget {
  const PackageWidgets({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: const BoxDecoration(
          color: Color(0xFFF1F1F1),
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name, style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Row(
              children: [
                SizedBox(
                  width: 220,
                  height: 50,
                  child: LinearProgressIndicator(
                    value: 1,
                    backgroundColor: Colors.grey[300],
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 135, 218, 246)),
                    minHeight: 30,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 70,
                  height: 50,
                  child: LinearProgressIndicator(
                    value: 1, // 25%
                    backgroundColor: Colors.grey[300],
                    valueColor:
                        const AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 191, 191, 191)),
                    minHeight: 20,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 135, 218, 246),
                          width: 15,
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Recebidos"),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text("1560 pacotes"),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 160),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("75%"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          color: const Color.fromARGB(255, 191, 191, 191),
                          width: 15,
                          height: 15,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 10.0),
                          child: Text("Faltantes"),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Text("440 pacotes"),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 165),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("25%"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
