import 'package:domestico/Home/home_screen.dart';
import 'package:domestico/booking/add_review.dart';
import 'package:domestico/booking/calendar_screen.dart';
import 'package:domestico/booking/request_sent.dart';
import 'package:domestico/booking/reviews_screen.dart';
import 'package:domestico/booking/sitter_details.dart';
import 'package:domestico/booking/sitter_list.dart';
import 'package:domestico/drawer/about_app.dart';
import 'package:domestico/drawer/contact_submitted.dart';
import 'package:domestico/drawer/contact_us.dart';
import 'package:domestico/favourite/favourite_screen.dart';
import 'package:domestico/login&register/Account_Type.dart';
import 'package:domestico/login&register/Login_screen.dart';
import 'package:domestico/login&register/Register_screen.dart';
import 'package:domestico/login&register/Sitter_register.dart';
import 'package:domestico/login&register/Splash_screen.dart';
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
import 'package:flutter_dotenv/flutter_dotenv.dart';


//import 'package:domestico/profile/ownerProfile.dart';

void main() async{
  //WidgetsFlutterBinding.ensureInitialized();
  //Stripe.publishableKey = 'your_publishable_key';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'LoginScreen',
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
      'AddReviewScreen' :(context)=> AddReview(),
      'ReviewsScreen' :(context)=> ReviewsScreen(),
      'AboutPet' :(context)=> AboutPet(name: 'a', pic: 'b', breed: 'c', gender: 'd'),
      'AddPet' :(context)=> AddPet(),
      'MyPets' :(context)=> MyPets(),
      'AccType' : (context)=> AccountType(),
      'LoginScreen' : (context)=> LoginScreen(),
      'RegisterScreen' : (context)=> RegisterScreen(),
      'SplashScreen' : (context)=> SplashScreen(),
      'SitterRegister':(context)=>SitterRegister(),
      'CalenderScreen' :(context)=> CalendarScreen(),
      'RequestSent':(context)=>RequestSent(),
      'SitterScreen':(context)=> SitterScreen(),
      'SitterDetails':(context)=> SitterDetails(),
      'PaymentScreen':(context)=> PaymentScreen(),
      'ContactUs':(context)=> ContactUs(),
      'ContactSubmitted':(context)=> ContactSubmitted(),
      'AboutApp':(context)=>AboutApp(),
    },
    );
  }
}
