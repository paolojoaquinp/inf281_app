// routes for my app
import 'package:flutter/material.dart';
import 'pages/login/login_page.dart';


class Routes {
  static final Map<String, WidgetBuilder> routes = {
    '/login': (context) => LoginPage(),
  };

  static final String initialRoute = '/login';
}