import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formGlobalKey = GlobalKey<FormState>();
  var size, width, height;
  @override
  bool _isObscure = true;

  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Form(
      key: _formGlobalKey,
      child: Scaffold(
            body: Center(
                    child: ListView(children: [
                      SizedBox(height: 100),
                      Center(
                          child: Text(
                        'Dine With Us',
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                          color: Colors.purple,
                        ),
                      )),
                      const SizedBox(height: 40),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(25),
                            child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: "Enter email",
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
                                  if (!RegExp(
                                          r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                                      .hasMatch(value)) {
                                    return "Email is not valid";
                                  }
                                  return null;
                                }),
                          ),
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: TextFormField(
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Enter password",
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                            label: Text(
                              "Password",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontSize: 20),
                            ),
                            suffix: InkWell(
                              onTap: _togglePasswordView,
                              child: Icon(
                                _isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Please enter password';
                            }
                            if (!RegExp(
                                    r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,20}$")
                                .hasMatch(value)) {
                              return 'Password should be a mixture of uppercase and lowercase\n letters';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 20),
                      SizedBox(height: 10),
                      Center(
                        child: SizedBox(
                          width: 350,
                          height: 55,
                          child: ElevatedButton(
                            child: const Text(
                              'Login',
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
                                Navigator.pushNamed(context, route.homePage);
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
                      SizedBox(height: 20),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, route.forgotPassword);
                          },
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w400),
                          )),
                      SizedBox(height: 30),
                      Container(
                          padding: EdgeInsets.all(10),
                          child: Center(
                            child: RichText(
                              text: TextSpan(
                                  text: 'Don\'t you have an Account? ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Montserrat',
                                      fontSize: 20),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Sign up',
                                        style: TextStyle(
                                            color: Colors.purple,
                                            fontFamily: 'Montserrat',
                                            fontSize: 20),
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.pushNamed(
                                                context, route.registerScreen);
                                          })
                                  ]),
                            ),
                          ))
                    ]),
                  ),
                ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      _isObscure = !_isObscure;
    });
  }
}
