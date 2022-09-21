//import 'package:flutter/material.dart';
//import 'package:splashscreen/splashscreen.dart';
//import 'loading_screen.dart';
//
//class Splash extends StatefulWidget {
//  @override
//  _SplashState createState() => new _SplashState();
//}
//
//class _SplashState extends State<Splash> {
//  @override
//  Widget build(BuildContext context) {
//    return new SplashScreen(
//        seconds: 14,
//        navigateAfterSeconds: LoadingScreen(),
//        title: Text('Clima',
//          style: TextStyle(
//              fontWeight: FontWeight.bold,
//              fontSize: 20.0
//          ),),
//        image: Image.asset('clima.png'),
//        styleTextUnderTheLoader: TextStyle(),
//        photoSize: 100.0,
//        useLoader: false,
//        loadingText: Text('From LOGAH-TECHNOLOGIES'),
//        onClick: ()=>print("Flutter Egypt"),
//    );
//  }
//}