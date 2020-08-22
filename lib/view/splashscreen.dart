import 'package:cake/view/widget/image_assets.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'landing_page.dart';

class SplashScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 6,
        navigateAfterSeconds: AppsLanding(),
        image: logoFull,
        backgroundColor: Colors.white,
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 150.0,
        loaderColor: Colors.red);
  }
}
