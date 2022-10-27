import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;

class NewPassword extends StatefulWidget {
  const NewPassword({Key? key}) : super(key: key);

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Text(
                "Create new password",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),



            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Your new password must be different from previous used passwords.",
                style: TextStyle(fontSize: 20),
              ),
            ),

          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextFormField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter new password",
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
                  return 'Password should be a mixture of 6-10 characters \nwith Uppercase and Lowercase';
                }
                return null;
              },
            ),
          ),
          // SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(25),
            child: TextFormField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Re-nter password",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                label: Text(
                  "Confirm password",
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
                  return 'Password should be a mixture of 6-10 characters \nwith Uppercase and Lowercase';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical:0,horizontal: 25),
            child: Text(
              "Both password must match.",
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                child: const Text(
                  'Reset password',
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
                    Navigator.pushNamed(context, route.confirmPassword);
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

        ],),
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
