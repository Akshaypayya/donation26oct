import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;

class CheckMail extends StatefulWidget {
  const CheckMail({Key? key}) : super(key: key);

  @override
  State<CheckMail> createState() => _CheckMailState();
}

class _CheckMailState extends State<CheckMail> {
  final _formGlobalKey = GlobalKey<FormState>();
  var size, width, height;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Form(
      key: _formGlobalKey,
      child: Scaffold(
        appBar: AppBar(title: Text('Dine with us')),
        body: Center(
          child: ListView(
            children: [
              SizedBox(height: 25),
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/images/checkmail.png",
                  width: 280.0,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                  child: Text(
                    "Check your mail",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "We have sent a password recover \n        instructions to your email.",
                    style: TextStyle(fontSize: 23),
                  ),
                ),
              ),
SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: 320,
                  height: 55,
                  child: ElevatedButton(
                    child: const Text(
                      'Enter otp',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.25,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, route.otpPage);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height:30),
              TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, route.loginScreen);
                  },
                  child: Text(
                    "Skip, I\'ll confirm later",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w400),
                  )),

              SizedBox(height: 100),

              Center(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(
                    "Did not receive the email? Check your spam filter,",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
              Container(

                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'or  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 20),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'try another email address',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                   Navigator.pushNamed(context, route.forgotPassword);
                                  })
                          ]),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
