class InfoModel {
  String title;
  String recebidos;
  int quantRecebidos;
  String faltantes;
  int quantFaltantes;

  InfoModel({
    required this.title,
    required this.recebidos,
    required this.quantRecebidos,
    required this.faltantes,
    required this.quantFaltantes,
  });

  factory InfoModel.fromMap(Map<String, dynamic> json) => InfoModel(
        title: json["title"] ?? "",
        recebidos: json["recebidos"] ?? "",
        quantRecebidos: json["quantRecebidos"] ?? "",
        faltantes: json["faltantes"] ?? "",
        quantFaltantes: json["quantFaltantes"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "title": title,
        "recebidos": recebidos,
        "quantRecebidos": quantRecebidos,
        "faltantes": faltantes,
        "quantFaltantes": quantFaltantes,
      };

  InfoModel copyWith({
    String? title,
    String? recebidos,
    int? quantRecebidos,
    String? faltantes,
    int? quantFaltantes,
  }) =>
      InfoModel(
        title: title ?? this.title,
        recebidos: recebidos ?? this.recebidos,
        quantRecebidos: quantRecebidos ?? this.quantRecebidos,
        faltantes: faltantes ?? this.faltantes,
        quantFaltantes: quantFaltantes ?? this.quantFaltantes,
      );
}
