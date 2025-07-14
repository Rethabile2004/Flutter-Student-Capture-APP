//
// Coder                    : Rethabile Eric Siase
// Time taken to complete   : 2 hours
// Number of external help  : 0
// Purpose                  : To demonstrate basic navigation and passing data through screens
//

import 'package:flutter/material.dart';
import 'package:main_test_2025/views/details_screen.dart';
import 'package:main_test_2025/views/input_screen.dart';

class RouteManager {
  static const String inputScreen = '/';
  static const String detailsScreen = '/details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case inputScreen:
        return MaterialPageRoute(builder: (context) => InputScreen());
      case detailsScreen:
        return MaterialPageRoute(builder: (context) => DetailsScreen());
      default:
        return throw const FormatException('Page not Found');
    }
  }
}
