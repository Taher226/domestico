import 'package:domestico/Home/home_screen.dart';
import 'package:domestico/booking/add_review.dart';
import 'package:domestico/booking/reviews_screen.dart';
import 'package:domestico/favourite/favourite_screen.dart';
import 'package:domestico/profile/aboutPet.dart';
import 'package:domestico/profile/addPet.dart';
import 'package:domestico/profile/myPets.dart';
import 'package:domestico/profile/owner_profile_screen.dart';
import 'package:domestico/profile/walker_profile_screen.dart';
import 'package:domestico/shop/Shop.dart';
import 'package:domestico/shop/accessories_screen.dart';
import 'package:domestico/shop/cart_screen.dart';
import 'package:domestico/shop/food_screen.dart';
import 'package:domestico/shop/iot_devices_screen.dart';
import 'package:domestico/shop/item_details.dart';
import 'package:domestico/shop/payment_screen.dart';
import 'package:domestico/shop/vet_items_screen.dart';
import 'package:flutter/material.dart';
//import 'package:domestico/profile/ownerProfile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


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
      'FavouriteScreen' :(context) => FavouriteScreen(),
      'PaymentScreen' :(context)=> PaymentScreen(),
      'AddReviewScreen' :(context)=> AddReview(),
      'ReviewsScreen' :(context)=> ReviewsScreen(),
      'AboutPet' :(context)=> AboutPet(name: 'a', pic: 'b', breed: 'c', gender: 'd'),
      'AddPet' :(context)=> AddPet(),
      'MyPets' :(context)=> MyPets(),
    },
    );
  }
}
