import 'package:flutter/material.dart';
import 'package:note/Features/Home_Page/Presentation/views/my_home_view.dart';
import 'package:note/Features/Login/Presentation/views/my_login_view.dart';
import 'package:note/Features/PageNotFound/page_not_found.dart';
import 'package:note/core/constants.dart';

class Routes {
  Route<dynamic>? Function(RouteSettings)? myRoutes = (RouteSettings settings) {
    switch (settings.name) {
      case homeViewName:
        {
          return MaterialPageRoute(
            builder: (context) => MyHomeView(),
          );
        }
      case loginViewName:
        {
          return MaterialPageRoute(
            builder: (context) => const MyLoginView(),
          );
        }
    }
    return MaterialPageRoute(
      builder: (context) => const PageNotFound(),
    );
  };
}
