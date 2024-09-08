import 'package:flutter/material.dart';

import 'tab_page_view.dart';
import 'tab_page_view_model.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  TabPageViewModel createState() => TabPageView();
}