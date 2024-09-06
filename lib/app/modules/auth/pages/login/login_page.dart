import 'package:flutter/material.dart';
import 'package:caed/app/modules/auth/pages/login/login_page_view.dart';
import 'package:caed/app/modules/auth/pages/login/login_page_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageViewModel createState() => LoginPageView();
}