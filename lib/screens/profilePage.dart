import 'package:flutter/material.dart';
import 'package:donation/routing/routing_page.dart' as route;

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Column(
      children: [
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Profile',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pushNamed(context,route.appSettings);
                },
               icon: Icon(
                  Icons.settings,
                 size: 30,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Container(
                  //margin: EdgeInsets.only(top: 48),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  //height: 300,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    child: CircleAvatar(
                      radius: 60.0,
                      backgroundColor: Colors.purple,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/userdefaulticon.jpg"),
                        radius: 54.0,
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 12.0,
                            child: Icon(
                              Icons.camera_alt,
                              size: 15.0,
                              color: Color(0xFF404040),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Together we can end hunger',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  height: 45,
                  width: 240,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, route.editProfile);
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Edit profile',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),

        //******* b0x************

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                  Container(
                    width: 185,
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors.purple.shade100,
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Text(
                          "0",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Food shared",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ),
                        ),
                          ],
                      ),
                    ),
                  ),
                 SizedBox(width: 10),

                 //************ 2nd box***********
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            width: 184,
                            height: 65,
                            decoration: BoxDecoration(
                              color: Colors.purple.shade100,
                              border: Border.all(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '\u{20B9}${0.00}',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    "Total donations",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
        ),


    //***** icon text ****

    Padding(
      padding: const EdgeInsets.all(8),
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context,route.achievements);
        },
        child: Container(
        decoration: BoxDecoration(
          color: Colors.purple.shade100,
        border: Border.all(
        color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(10),
        ),
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Container(
                    child:Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Icon(
                          Icons.stars,
                          size: 32,
                          color: Colors.orange,
                      ),
                    ),
                  ),
                ),


                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, route.achievements);
                          },
                          child: Text(
                            "See all achievements",
                              textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                  ),
                ],
              ),
        ),
      ),
    ),
      ],
        ),
    );
  }
}