import 'package:flight_booking/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {

  // Router Names
  static const String SPLASH_SCREEN = 'splash_screen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    ArgumentsList args = settings.arguments;

    switch (settings.name) {
      case SPLASH_SCREEN:
        return MaterialPageRoute(builder: (context) => SplashScreen());
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