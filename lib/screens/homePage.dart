import 'dart:io';

import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var size, width, height;
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
   return Scaffold(
     appBar: AppBar(title: Text('Dine with us'),
       automaticallyImplyLeading: false,
     ),
     endDrawer: Drawer(
       child: ListView(
         padding: EdgeInsets.zero,
         children: [
           UserAccountsDrawerHeader(
             accountName: Text('Akshay',style: TextStyle(fontSize:20,color: Colors.white),),
             accountEmail: Text('akshay.payya@gmail.com',style: TextStyle(fontSize:18,color: Colors.white)),
             currentAccountPictureSize: Size.square(50),
             currentAccountPicture: CircleAvatar(
               backgroundColor: Colors.grey,
               child: Text('A',
                 style: TextStyle(fontSize: 30,
                     color: Colors.purple),
               ),
             ),
           ),

     ListTile(
       horizontalTitleGap: 40,
           leading: Icon(Icons.person,size: 40),
       title: Text("Profile",style: TextStyle(fontSize: 22),),
           onTap: () {
             Navigator.pushNamed(context, route.profilePage);
           },
         ),

           ListTile(
             horizontalTitleGap: 40,
             leading: Icon(
               Icons.home,
               size: 40,
             ),
             title: const Text('Page 1',style: TextStyle(fontSize: 22),),
             onTap: () {
               Navigator.pop(context);
             },
           ),
           ListTile(
             horizontalTitleGap: 40,
             leading: Icon(
               Icons.home,
               size: 40,
             ),
             title: const Text('Page 2',style: TextStyle(fontSize: 22),),
             onTap: () {
               Navigator.pop(context);
             },
           ),

           ListTile(
             horizontalTitleGap: 40,
             leading: Icon(
               Icons.add_card,
               size: 40,
             ),
             title: const Text('About',style: TextStyle(fontSize: 22),),
             onTap: () {},
           ),

           ListTile(
             horizontalTitleGap: 40,
             leading: Icon(
               Icons.health_and_safety,
               size: 40,
             ),
             title: const Text('Donation',style: TextStyle(fontSize: 22),),
             onTap: () {
               Navigator.pushNamed(context, route.donationScreen);
             },
           ),

           ListTile(
             horizontalTitleGap: 40,
             leading: Icon(
               Icons.help,
               size: 40,
             ),
             title: const Text('Help',style: TextStyle(fontSize: 22),),
             onTap: () {
               Navigator.pop(context);
             },
           ),

           ListTile(
             horizontalTitleGap: 40,
             leading: Icon(
               Icons.share,
               size: 40,
             ),
             title: const Text('Share App',style: TextStyle(fontSize: 22),),
             onTap: () {
               Navigator.pop(context);
             },
           ),

           ListTile(
             horizontalTitleGap: 40,
             leading: Icon(
               Icons.logout,
               size: 40,
             ),
             title: const Text('Log out',style: TextStyle(fontSize: 22),),
             onTap: () => exit(0),
           ),

         ],
       ),
     ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (value) {
            setState(() => _currentIndex = value);
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.gps_fixed),
              label: 'Map',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.group),
              label: 'Community',
            ),

        // ],
        // ) ,
        ],),
   );
  }
}