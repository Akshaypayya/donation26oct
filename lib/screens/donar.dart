import 'package:flutter/material.dart';

class Donar extends StatefulWidget {
  const Donar({Key? key}) : super(key: key);

  @override
  State<Donar> createState() => _DonarState();
}

class _DonarState extends State<Donar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Donar'),
      ),
    );
  }
}
