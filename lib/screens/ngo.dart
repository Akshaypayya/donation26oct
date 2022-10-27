import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;


class Ngo extends StatefulWidget {
  const Ngo({Key? key}) : super(key: key);

  @override
  State<Ngo> createState() => _NgoState();
}

class _NgoState extends State<Ngo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Ngo screen'),
      ),
    );
  }
}