import 'package:flutter/material.dart';

class AppSettings extends StatefulWidget {
  const AppSettings({Key? key}) : super(key: key);

  @override
  State<AppSettings> createState() => _AppSettingsState();
}

class _AppSettingsState extends State<AppSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Dine with us'),
      ),
      body: ListView(
          children: [
            ListTile(
          title: Text('Account'),
          leading: Icon(
            Icons.person_pin,
            color: Colors.purple,
          ),
          onTap: () { },
        ),
        ListTile(
          title: Text('Notification'),
          leading: Icon(
            Icons.notification_add_outlined,
    color: Colors.purple,
          ),
          onTap: () {},
        ),
        ListTile(
          title: Text('Privacy & Security'),
          leading: Icon(
            Icons.lock_open_outlined,
    color: Colors.purple,
          ),
          onTap: () { },
        ),
        ListTile(
          title: Text('Hep & Support'),
          leading: Icon(
            Icons.support_agent,
    color: Colors.purple,
          ),
          onTap: () { },
        ),
        ListTile(
          title: Text('About'),
          leading: Icon(
            Icons.question_mark,
    color: Colors.purple,
          ),
          onTap: () { },
        ),
        Divider(),
        ListTile(title: Text('Notification Settings'), onTap: () {}),
        ListTile(title: Text('Privacy Policy'), onTap: () {}),
        ListTile(title: Text('Legal'), onTap: () {}),
        Container(
            child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: <Widget>[
                    Divider(),
                    ListTile(title: Text('Dinewithus@gmail.com')),
                  ],
                ))),
   ],),);
  }
}

