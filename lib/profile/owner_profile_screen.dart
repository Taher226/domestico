import 'package:domestico/shop/cart_screen.dart';
import 'package:flutter/material.dart';

class OwnerProfileScreen extends StatefulWidget {
  static const String routeName = 'OwnerProfileScreen';

  @override
  State<OwnerProfileScreen> createState() => _OwnerProfileScreenState();
}

class _OwnerProfileScreenState extends State<OwnerProfileScreen> {
  void _changeItems(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        color: const Color.fromARGB(255, 247, 245, 245),
        child: Column(children: [
          Container(
            height: 260,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: const Color.fromARGB(255, 226, 226, 238)),
            child: MaterialButton(
                onPressed: () {},
                child: Center(
                    child: Icon(
                  Icons.photo_camera_back_outlined,
                  size: 150,
                ))),
            //         child: CustomPaint(
            //   painter: CurvePainter(),
            //   size: Size(MediaQuery.of(context).size.width, 200),
            // ),
          ),
          //SizedBox(height: 15,),
          Container(
            margin: EdgeInsets.only(top: 15, bottom: 20),
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  height: 160,
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Owner Name",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          MaterialButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.arrow_circle_left_outlined,
                                  color: const Color.fromARGB(255, 207, 56, 45),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Logout",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Color.fromARGB(255, 207, 56, 45)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            Icon(Icons.mail_outline_rounded),
                            SizedBox(
                              width: 20,
                            ),
                            Text("ownername@gmail.com")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Row(
                          children: [
                            Icon(Icons.phone_outlined),
                            SizedBox(
                              width: 20,
                            ),
                            Text("0758519048")
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 215,
                  padding: EdgeInsets.only(left: 0, right: 0, top: 10),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.person_2_outlined),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Edit Info",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color.fromARGB(255, 95, 91, 91),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(context,new MaterialPageRoute(
                            builder: (context)=> new CartScreen(),
                          ));
                          setState(() {

                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                                children: [
                                  Icon(Icons.shopping_bag_outlined),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Cart",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  )
                                ],
                              ),

                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color.fromARGB(255, 95, 91, 91),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "My Address",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color.fromARGB(255, 95, 91, 91),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.pets_outlined),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "My Pet/s",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                )
                              ],
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: const Color.fromARGB(255, 95, 91, 91),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    ));
    ;
  }
}
