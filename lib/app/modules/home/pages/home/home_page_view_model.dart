import 'package:caed/app/modules/home/home_state_store.dart';
import 'package:caed/app/modules/home/pages/home/home_page.dart';
import 'package:caed/core/provider/get_it_injector.dart';
import 'package:flutter/material.dart';

abstract class HomePageViewModel extends State<HomePage> {
  late HomeStateStore homeStateStore = getIt<HomeStateStore>();

  @override
  void initState() {
    getAllInfo();
    getAllPackages();
    super.initState();
  }

  getAllInfo() async {
    await homeStateStore.getInfo();
  }

  getAllPackages() async {
    await homeStateStore.getPackages();
  }
}
