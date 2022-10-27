import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Profile")),
      body: Center(
        child: ListView(
    padding: EdgeInsets.zero,
    children: [
      SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Name :',style: TextStyle(fontSize: 20)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Email :',style: TextStyle(fontSize: 20)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Mobile :',style: TextStyle(fontSize: 20)),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Location :',style: TextStyle(fontSize: 20)),
        ),
        SizedBox(height: 10),
        TextButton(
            onPressed: () {
              Navigator.pushNamed(context, route.newPassword);
            },
            child: Text(
              "Change password?",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400),
            )),
        ],
        ),
      ),
    );
  }
}
