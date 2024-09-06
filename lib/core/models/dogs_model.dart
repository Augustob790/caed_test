import 'dart:convert';

List<DogsModel> dogsModelFromMap(String str) => List<DogsModel>.from(json.decode(str).map((x) => DogsModel.fromMap(x)));

String dogsModelToMap(List<DogsModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class DogsModel {
  Eight weight;
  Eight height;
  int id;
  String name;
  String bredFor;
  String breedGroup;
  String lifeSpan;
  String temperament;
  String origin;
  String referenceImageId;
  String countryCode;
  String description;
  String history;

  DogsModel({
    required this.weight,
    required this.height,
    required this.id,
    required this.name,
    required this.bredFor,
    required this.breedGroup,
    required this.lifeSpan,
    required this.temperament,
    required this.origin,
    required this.referenceImageId,
    required this.countryCode,
    required this.description,
    required this.history,
  });

  factory DogsModel.fromMap(Map<String, dynamic> json) => DogsModel(
        weight: Eight.fromMap(json["weight"] ?? {}),
        height: Eight.fromMap(json["height"] ?? {}),
        id: int.tryParse(json["id"].toString()) ?? 0,
        name: json["name"] ?? "",
        bredFor: json["bred_for"] ?? "",
        breedGroup: json["breed_group"] ?? "",
        lifeSpan: json["life_span"] ?? "",
        temperament: json["temperament"] ?? "",
        origin: json["origin"] ?? "",
        referenceImageId: json["reference_image_id"] ?? "",
        countryCode: json["country_code"] ?? "",
        description: json["description"] ?? "",
        history: json["history"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "weight": weight.toMap(),
        "height": height.toMap(),
        "id": id,
        "name": name,
        "bred_for": bredFor,
        "breed_group": breedGroup,
        "life_span": lifeSpan,
        "temperament": temperament,
        "origin": origin,
        "reference_image_id": referenceImageId,
        "country_code": countryCode,
        "description": description,
        "history": history,
      };

  DogsModel copyWith({
    Eight? weight,
    Eight? height,
    int? id,
    String? name,
    String? bredFor,
    String? breedGroup,
    String? lifeSpan,
    String? temperament,
    String? origin,
    String? referenceImageId,
    String? countryCode,
    String? description,
    String? history,
  }) =>
      DogsModel(
        weight: weight ?? this.weight,
        height: height ?? this.height,
        id: id ?? this.id,
        name: name ?? this.name,
        bredFor: bredFor ?? this.bredFor,
        breedGroup: breedGroup ?? this.breedGroup,
        lifeSpan: lifeSpan ?? this.lifeSpan,
        temperament: temperament ?? this.temperament,
        origin: origin ?? this.origin,
        referenceImageId: referenceImageId ?? this.referenceImageId,
        countryCode: countryCode ?? this.countryCode,
        description: description ?? this.description,
        history: history ?? this.history,
      );
}

class Eight {
  String imperial;
  String metric;

  Eight({
    required this.imperial,
    required this.metric,
  });

  factory Eight.fromMap(Map<String, dynamic> json) => Eight(
        imperial: json["imperial"] ?? "",
        metric: json["metric"] ?? "",
      );

  Map<String, dynamic> toMap() => {
        "imperial": imperial,
        "metric": metric,
      };

  Eight copyWith({
    String? imperial,
    String? metric,
  }) =>
      Eight(
        imperial: imperial ?? this.imperial,
        metric: metric ?? this.metric,
      );
}
