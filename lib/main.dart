import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/services.dart';

import 'Screens/HomeScreen.dart';
import 'Screens/contentScreen.dart';
import 'Screens/temp.dart';





void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MALABAR',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),

      home:AnimatedSplashScreen(splash: Image(image: AssetImage('assets/21 Days.png'),height: 700,width: 800,),
      duration: 3000,
       splashTransition: SplashTransition.rotationTransition,
       backgroundColor: Colors.white,
      nextScreen: HomeScreen()),
    );
  }
}

