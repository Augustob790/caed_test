import 'package:flutter/material.dart';

class DataTab extends StatelessWidget {
  const DataTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("DADOS DA CAIXA"),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("CÓDIGO"),
                  Text("11111111111"),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("PONTO DE ENTREGA"),
                  Text("1º REGIAO"),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("MUNICIPIO"),
                  Text("ARACAJU/SE"),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("ESCOLA"),
                  Text("EMEF DEPUTADO\nJAIMENARAUJO(28031121)"),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("ANO ESCOLAR/ETAPA"),
                  Padding(
                    padding: EdgeInsets.only(left:30.0),
                    child: Text("2º ANO EF(ENSINO\nFUNDAMENTAL)"),
                  ),
                ],
              ),
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("COMPONENTE \nCURRICULAR"),
                  Text("LINGUA PORTUGUESA"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
