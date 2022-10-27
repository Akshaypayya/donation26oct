import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;
import 'package:vertical_card_pager/vertical_card_pager.dart';



class DonationScreen extends StatefulWidget {
  const DonationScreen({Key? key}) : super(key: key);

  @override
  State<DonationScreen> createState() => _DonationScreenState();
}

class _DonationScreenState extends State<DonationScreen> {

  final List<String> titles = [
    "FOOD",
    "MONEY",
  ];

  final List<Widget> images = [
    Hero(
      tag:'FOOD',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/food.png",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Hero(
      tag:'MONEY',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.asset(
          "assets/images/money.png",
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Choose desired field to continue',style: TextStyle(fontSize: 30),),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(8.0),
                child: VerticalCardPager(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  titles: titles,
                  images: images,
                  onPageChanged: (page) {},
                  onSelectedItem: (index) {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}