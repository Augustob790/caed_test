import 'package:flutter/material.dart';

import 'home_page_view.dart';
import 'home_page_view_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageViewModel createState() => HomePageView();
}