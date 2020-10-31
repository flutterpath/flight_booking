import 'package:flight_booking/themes/app_themes.dart';
import 'package:flight_booking/themes/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DashboardScreenState();

}

class DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
//    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
        alignment: Alignment.center,
          child: Column(
            children: [

            ],
          ),
        ),
      ),
    );
  }

}


//FlatButton(
//onPressed: () => _themeChanger.switchTheme(),
//child: Text('Change Theme')
//),