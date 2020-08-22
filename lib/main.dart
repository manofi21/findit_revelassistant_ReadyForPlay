import 'package:cake/view/registration.dart';
import 'package:cake/view/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/provider.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
//        home: BottomTabbar()
        home: Scaffold(
          // body: SplashScreenView(),
          body: Registration_View(),
        )),
    );
  }
}
