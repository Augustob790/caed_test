import 'package:caed/app/modules/home/pages/details/details_page_view.dart';
import 'package:caed/app/modules/home/pages/details/details_page_view_model.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final int index;
  final String cod;
  const DetailsPage({super.key, required this.index, required this.cod});

  @override
  DetailsPageViewModel createState() => DetailsPageView();
}