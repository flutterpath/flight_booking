import 'package:flight_booking/ui/dashboard/dashboard_screen.dart';
import 'package:flight_booking/ui/on_boarding/on_boarding_screen.dart';
import 'package:flight_booking/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {

  // Router Names
  static const String SPLASH_SCREEN = 'splash_screen';
  static const String ON_BOARDING_SCREEN = 'on_boarding_screen';
  static const String DASHBOARD_SCREEN = 'dashboard_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    ArgumentsList args = settings.arguments;

    switch (settings.name) {
      case SPLASH_SCREEN:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case ON_BOARDING_SCREEN:
        return MaterialPageRoute(builder: (context) => OnBoardingScreen());
      case DASHBOARD_SCREEN:
        return MaterialPageRoute(builder: (context) => DashboardScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Error"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("page Not Found"),
        ),
      );
    });
  }

}

class ArgumentsList {
  int initialIndex;
  String pdfBackPop;

  ArgumentsList(this.initialIndex);

}