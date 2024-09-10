import 'package:flutter/material.dart';

import 'package_list_page_view.dart';
import 'package_list_page_view_model.dart';

class PackageListPage extends StatefulWidget {
  const PackageListPage({super.key});

  @override
  PackageListPageViewModel createState() => PackageListPageView();
}