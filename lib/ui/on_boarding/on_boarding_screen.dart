import 'package:dots_indicator/dots_indicator.dart';
import 'package:flight_booking/constants/color_constants.dart';
import 'package:flight_booking/constants/images_constants.dart';
import 'package:flight_booking/constants/strings.dart';
import 'package:flight_booking/routers/routers.dart';
import 'package:flight_booking/widgets/utils.dart';
import 'package:flight_booking/widgets/introduction_screen/src/introduction_screen.dart';
import 'package:flight_booking/widgets/introduction_screen/src/model/page_decoration.dart';
import 'package:flight_booking/widgets/introduction_screen/src/model/page_view_model.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, fontFamily: AppFontName, color: AppColors.colorWhite);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, fontFamily: AppFontName, color: AppColors.colorWhite),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      boxDecoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              AppColors.colorGradient1Red,
              AppColors.colorGradient1Blue,
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      imagePadding: EdgeInsets.zero,
    );

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(AppImages.imageSplashBackground), fit: BoxFit.cover,),
            ),
          ),

          Opacity(
            opacity: 0.9,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
//              decoration: BoxDecoration(
//                gradient: CustomWidgets.getCustomGradient(),
//              ),
              child: IntroductionScreen(
                key: introKey,
                pages: [

                  PageViewModel(
                    title: slide1_title,
                    body: "Here you can search out all available flights according to your suitability.",
                    image: Image.asset(AppImages.iconVideoPlay, width: 200,),
                    decoration: pageDecoration,
                  ),

                  PageViewModel(
                    title: slide2_title,
                    body: "Book flights and do payment is just as simple as you think.",
                    image: Image.asset(AppImages.iconVideoPlay, width: 200,),
                    decoration: pageDecoration,
                  ),

                  PageViewModel(
                    title: slide3_title,
                    body: "Use your sports knowledge and showcase your skills to create your team within a budget of 100 credits",
                    image: Image.asset(AppImages.iconVideoPlay, width: 200,),
                    decoration: pageDecoration,
                  ),

                ],
                onDone: () => _onIntroEnd(context), // onDone callback
                onSkip: () => _onIntroEnd(context), // onSkip callback
                showSkipButton: true,
                skipFlex: 0,
                nextFlex: 0,
                skip: Text('Skip'.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorWhite, fontFamily: AppFontName)),
                next: Container(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    gradient: AppUtils.getCustomGradientHorizontal(AppColors.colorGradient2Blue,AppColors.colorGradient2Green),
                  ),
                  child: Text(next.toUpperCase(), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, fontFamily: AppFontName, color: AppColors.colorWhite),),
                ),
                done: Text('Done'.toUpperCase(), style: TextStyle(fontWeight: FontWeight.bold, color: AppColors.colorWhite, fontFamily: AppFontName)),
                dotsDecorator: const DotsDecorator(
                  size: Size(10.0, 10.0),
                  color: AppColors.colorGreyLight,
                  activeColor: AppColors.colorWhite,
                  activeSize: Size(22.0, 10.0),
                  activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                  ),
                ),
              ),
            ),
          ),

        ],
      )
    );
  }
  void _onIntroEnd(context) {
//    Provider.of(context).setTheme(AppTheme.White);
    Navigator.of(context).pushNamed(AppRouters.DASHBOARD_SCREEN);
  }

}