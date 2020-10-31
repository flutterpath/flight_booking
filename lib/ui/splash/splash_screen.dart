import 'dart:async';

import 'package:flight_booking/constants/color_constants.dart';
import 'package:flight_booking/constants/images_constants.dart';
import 'package:flight_booking/constants/strings.dart';
import 'package:flight_booking/routers/routers.dart';
import 'package:flight_booking/widgets/utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: AppUtils.getCustomGradientVertical(AppColors.colorGradient1Red,AppColors.colorGradient1Blue),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height*0.05,),
            Expanded(
                child: Image.asset(AppImages.iconSplashCircular,)
            ),
            Expanded(
                child: Center(
                    child: Text(appName, style: TextStyle(fontSize: 30, color: AppColors.colorWhite))
                )
            ),
          ],
        ),
      ),
    );
  }

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed(AppRouters.ON_BOARDING_SCREEN);
  }

}