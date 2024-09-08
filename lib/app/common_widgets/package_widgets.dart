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
        child: Column(children: [
          Text(name, style: const TextStyle(fontSize: 18)),
          Row(
            children: [
              SizedBox(
                width: 100,
                height: 20, // Define a largura máxima
                child: LinearProgressIndicator(
                  value: 1,
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
                  minHeight: 20,
                ),
              ),
              const SizedBox( width: 20),
              SizedBox(
                width: 50,
                height: 30,
                child: LinearProgressIndicator(
                  value: 1, // 25%
                  backgroundColor: Colors.grey[300],
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.grey),
                  minHeight: 20,
                  borderRadius:  BorderRadius.circular(5.0),
                ),
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Devolvidos"),
              Text("1560 pacotes (75%)"),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Faltantes"),
              Text("440 pacotes (25%)"),
            ],
          ),
        ]),
      ),
    );
  }
}
