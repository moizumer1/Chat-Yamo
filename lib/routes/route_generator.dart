




import 'package:dating/routes/route_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../features/users/presentation/screens/buttom_navigation_screen/buttom_navigation_screen.dart';
import '../features/users/presentation/screens/login_screen.dart';
import '../features/users/presentation/screens/login_varification_screen.dart';
import '../features/users/presentation/screens/splash_screen.dart';
import '../features/users/presentation/screens/varification_code_screen.dart';
import '../features/users/presentation/screens/welcome_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {


    //auth view
    case Routes.initial:
      return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.welcomescreen:
        return MaterialPageRoute(builder: (_) =>  WelcomeScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) =>  LoginScreen());
      case Routes.loginvarificationScreen:
        return MaterialPageRoute(builder: (_) =>  LoginVarificationScreen());
      case Routes.varificationcodeScreen:
        return MaterialPageRoute(builder: (_) =>  VarificationCodeScreen());
      case Routes.buttomnavigationScreen:
        return MaterialPageRoute(builder: (_) =>  BottomNavigationScreen());




      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(child: Text('ERROR')),
        );
      },
    );
  }
}
