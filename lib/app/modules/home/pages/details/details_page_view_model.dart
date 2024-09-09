import 'package:caed/app/modules/home/pages/details/details_page.dart';
import 'package:caed/core/models/timeline_model.dart';
import 'package:flutter/material.dart';

abstract class DetailsPageViewModel extends State<DetailsPage> {

  List<TimelineEvent> events = [
      TimelineEvent(date: DateTime.now().subtract(const Duration(days: 1)), description: "Coordenador registrou recebimento deste pacote"),
      TimelineEvent(date: DateTime.now(), description: "Coordenador registrou devolução deste pacote"),
    ];

}
