import 'package:flight_booking/constants/color_constants.dart';
import 'package:flight_booking/constants/shared_preferences.dart';
import 'package:flight_booking/routers/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

SpUtil sp;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sp = await SpUtil.getInstance();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flight Booking',
      initialRoute: AppRouters.SPLASH_SCREEN,
      onGenerateRoute: AppRouters.generateRoute,
      theme: ThemeData(
//          fontFamily: '',
          accentColor: AppColors.colorSecondaryMaterial,
          primaryColor: AppColors.colorPrimaryMaterial
      ),
    );
  }
}

