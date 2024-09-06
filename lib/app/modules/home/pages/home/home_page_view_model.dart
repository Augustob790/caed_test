import 'package:flutter/material.dart';
import 'package:caed/app/modules/home/home_state_store.dart';
import 'package:caed/app/modules/home/pages/home/home_page.dart';
import 'package:caed/core/provider/get_it_injector.dart';

abstract class HomePageViewModel extends State<HomePage> {
  late HomeStateStore homeStateStore = getIt<HomeStateStore>();

  @override
  void initState() {
    getAllDogs();
    super.initState();
  }

  getAllDogs() async {
    await homeStateStore.getAllDogs();
  }
}
