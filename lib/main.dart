import 'package:domestico/Home/home_screen.dart';
import 'package:domestico/profile/owner_profile_screen.dart';
import 'package:domestico/profile/walker_profile_screen.dart';
import 'package:domestico/shop/Shop.dart';
import 'package:domestico/shop/accessories_screen.dart';
import 'package:domestico/shop/cart_screen.dart';
import 'package:domestico/shop/food_screen.dart';
import 'package:domestico/shop/iot_devices_screen.dart';
import 'package:domestico/shop/item_details.dart';
import 'package:domestico/shop/vet_items_screen.dart';
import 'package:flutter/material.dart';
//import 'package:domestico/profile/ownerProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'HomeScreen',
    routes: {
        'HomeScreen' :(context) => HomeScreen(),
        'AccessoriesScreen' :(context) => AccessoriesScreen(),
        'FoodScreen' :(context) => FoodScreen(),
        'IotDevicesScreen' :(context) => IotDevicesScreen(),
        'VetItemsScreen' :(context) => VetItemsScreen(),
      'Shop' :(context) => Shop(),
      'OwnerProfileScreen' : (context) => OwnerProfileScreen(),
      'WalkerProfileScreen' : (context) => WalkerProfileScreen(),
      'CartScreen' :(context) => CartScreen(),
      'ItemDetails' :(context)=> ItemDetails(),

    },
    );
  }
}
