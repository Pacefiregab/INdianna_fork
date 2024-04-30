import 'package:flutter/material.dart';

import 'package:Indiana/app/config/routes.dart';
import 'package:Indiana/app/views/home_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case GenericRoutes.homeRoute:
      return MaterialPageRoute(builder: (context) => const HomePage());
    default:
      return MaterialPageRoute(builder: (context) => const HomePage());
  }
}
