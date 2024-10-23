import 'package:flutter/material.dart';
import 'package:task_training/core/routing/routes.dart';
import 'package:task_training/features/home/home_screen.dart';

import '../../features/initial/ui/initial_screen.dart';
import '../../features/login/ui/login_screen.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialScreen:
        return MaterialPageRoute(
          builder: (_) => const InitialScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}