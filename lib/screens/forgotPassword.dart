import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  "Enter the email associated with your account and we\'ll send an email instruction to reset your password",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Enter your email",
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                          ),
                          label: Text(
                            "Email",
                            style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 20),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'This field can\'t be empty';
                          }
                          if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                              .hasMatch(value)) {
                            return "Email is not valid";
                          }
                          return null;
                        }),
                  ),
                ],
              ),
              Center(
                child: SizedBox(
                  width: 350,
                  height: 55,
                  child: ElevatedButton(
                    child: const Text(
                      'Send link',
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.25,
                      ),
                    ),
                    onPressed: () {
                      if (_formGlobalKey.currentState!.validate()) {
                        Navigator.pushNamed(context, route.checkMail);
                      }
                      ;
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
              Container(
                  padding: EdgeInsets.all(10),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: 'Back to ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 20),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Sign in',
                                style: TextStyle(
                                    color: Colors.purple,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.pushNamed(
                                        context, route.loginScreen);
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
