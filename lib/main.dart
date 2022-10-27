//import 'package:donation/screens/donationScreen.dart';
//import 'package:donation/screens/introScreen.dart';
//import 'package:donation/screens/checkMail.dart';

import 'package:donation/screens/splashScreen.dart';
import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appTitle = 'Food Donation';

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle());
    return MaterialApp(
      title: appTitle,
        theme: ThemeData(
        primarySwatch:Colors.purple,
    ),
    debugShowCheckedModeBanner: false,
       onGenerateRoute: route.controller,//initialRoute: route.loginScreen,
      //home: RegisterScreen(),
      home:Splashscreen(),
    );
  }
}
