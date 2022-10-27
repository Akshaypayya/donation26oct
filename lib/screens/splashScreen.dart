import 'dart:async';

import 'package:donation/screens/loginScreen.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _Splashscreenstate createState() => _Splashscreenstate();
}

class _Splashscreenstate extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 7),
            () =>
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen())));
  }
var size,height,width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset("assets/images/Mydonationlogo.png",
                height: 300),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 8),
                  child: Column(
                    children: const [
                      Text(
                        "It\'s not how much we give,\nbut how much love we put\ninto giving",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Colors.purple),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          '~ Mother Teresa',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 7,horizontal: 25),

                      child: DefaultTextStyle(
                        style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat'),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            TyperAnimatedText(
                           'loading...',
                              textStyle: TextStyle(color: Colors.purple),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                // SizedBox(height: 30),
              ])),
    );
  }
}
