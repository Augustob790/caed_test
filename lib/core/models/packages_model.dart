import 'package:caed/core/models/status_model.dart';

class PackagesModel {
  String cod;
  String pontoDeEntrega;
  String municipio;
  String escola;
  String anoEscolar;
  String componenteEscolar;
  List<Status> status;

  PackagesModel({
    required this.cod,
    required this.pontoDeEntrega,
    required this.municipio,
    required this.escola,
    required this.anoEscolar,
    required this.componenteEscolar,
    required this.status,
  });

  factory PackagesModel.fromMap(Map<String, dynamic> json) {
    List<Status> status = [];
    if (json['status'] != null) {
      json['status'].forEach((v) {
        status.add(Status.fromMap(v));
      });
    }
    return PackagesModel(
      cod: json["cod"] ?? "",
      pontoDeEntrega: json["pontoDeEntrega"] ?? "",
      municipio: json["municipio"] ?? "",
      escola: json["escola"] ?? "",
      anoEscolar: json["anoEscolar"] ?? "",
      componenteEscolar: json["ComponenteEscolar"] ?? "",
      status: status,
    );
  }

  Map<String, dynamic> toMap() => {
        "cod": cod,
        "pontoDeEntrega": pontoDeEntrega,
        "municipio": municipio,
        "escola": escola,
        "anoEscolar": anoEscolar,
        "ComponenteEscolar": componenteEscolar,
        "status": status.map((x) => x.toMap()).toList(),
      };

  PackagesModel copyWith({
    String? cod,
    String? pontoDeEntrega,
    String? municipio,
    String? escola,
    String? anoEscolar,
    String? componenteEscolar,
    List<Status>? status,
  }) =>
      PackagesModel(
        cod: cod ?? this.cod,
        pontoDeEntrega: pontoDeEntrega ?? this.pontoDeEntrega,
        municipio: municipio ?? this.municipio,
        escola: escola ?? this.escola,
        anoEscolar: anoEscolar ?? this.anoEscolar,
        componenteEscolar: componenteEscolar ?? this.componenteEscolar,
        status: status ?? this.status,
      );
}
