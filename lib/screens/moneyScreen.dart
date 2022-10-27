import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;


class Moneyscreen extends StatefulWidget {
  const Moneyscreen({Key? key}) : super(key: key);

  @override
  State<Moneyscreen> createState() => _MoneyscreenState();
}

class _MoneyscreenState extends State<Moneyscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Money screen'),
      ),
    );
  }
}