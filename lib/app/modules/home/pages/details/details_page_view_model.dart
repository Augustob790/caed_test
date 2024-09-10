import 'package:caed/app/modules/home/home_state_store.dart';
import 'package:caed/app/modules/home/pages/details/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class DetailsPageViewModel extends State<DetailsPage> {

  HomeStateStore homeStateStore = Modular.get<HomeStateStore>();

}
