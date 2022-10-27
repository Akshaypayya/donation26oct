import 'package:donation/routing/routing_page.dart' as route;
import 'package:flutter/material.dart';

class ConfirmPassword extends StatelessWidget {
  const ConfirmPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text('password updated successfully',
            style: TextStyle(fontSize: 30),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
            child: SizedBox(
              width: 350,
              height: 65,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, route.loginScreen);
                },
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                ),
                child: const Text(
                  'Press here to continue',
                  style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 1.25,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),);
  }
}
