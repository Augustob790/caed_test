class Status {
  int cod;
  String date;
  String hora;
  String status;

  Status({
    required this.cod,
    required this.date,
    required this.hora,
    required this.status,
  });

  factory Status.fromMap(Map<String, dynamic> json) => Status(
        cod: json["cod"] ?? "",
        date: json["date"] ?? "",
        hora: json["hora"] ?? "",
        status: json["status"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "cod": cod,
        "date": date,
        "hora": hora,
        "status": status,
      };

  Status copyWith({
    int? cod,
    String? date,
    String? hora,
    String? status,
  }) =>
      Status(
        cod: cod ?? this.cod,
        date: date ?? this.date,
        hora: hora ?? this.hora,
        status: status ?? this.status,
      );
}
