import 'package:domestico/booking/sitter_list.dart';
import 'package:domestico/favourite/favourite_screen.dart';
import 'package:domestico/login&register/Login_screen.dart';
import 'package:domestico/my_theme.dart';
import 'package:domestico/profile/owner_profile_screen.dart';
import 'package:domestico/profile/walker_profile_screen.dart';
import 'package:domestico/shop/Shop.dart';
import 'package:domestico/shop/cart_screen.dart';
import 'package:domestico/shop/item_details.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// class HomeScreen extends StatelessWidget {
//   //static const String routeName = 'HomeScreen';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: PreferredSize(
//       //   preferredSize: Size.fromHeight(80.0),
//       //   child: AppBar(
//       //     backgroundColor: MyTheme.primaryLight,
//       //     leading: Builder(
//       //        builder: (context){
//       //         return IconButton(
//       //            onPressed: (){
//       //              Scaffold.of(context).openDrawer();
//       //            },
//       //            icon: Padding(
//       //              padding: const EdgeInsets.only(top: 20),
//       //              child: Icon(Icons.table_rows_sharp,color: MyTheme.whiteColor,),
//       //            ),
//       //          );
//       //        },
//       //     ),
//       //     title: Padding(
//       //       padding: const EdgeInsets.only(top:30.0),
//       //       child: Text('Domestico',style: MyTheme.lightTheme.textTheme.titleLarge,),
//       //     ),
//       //     centerTitle: true,
//       //   ),
//       // ),
//       // drawer:Drawer(
//       //   backgroundColor: Color(0xffEDEDED),
//       //   // Add a ListView to the drawer. This ensures the user can scroll
//       //   // through the options in the drawer if there isn't enough vertical
//       //   // space to fit everything.
//       //   child: ListView(
//       //     // Important: Remove any padding from the ListView.
//       //     padding: EdgeInsets.zero,
//       //     children: [
//       //       Column(
//       //         children: [
//       //           Padding(
//       //             padding: const EdgeInsets.all(50.0),
//       //             child: Text('Settings',style: MyTheme.lightTheme.textTheme.titleMedium,),
//       //           ),
//       //
//       //         ],
//       //       ),
//       //       InkWell(
//       //         onTap: (){},
//       //         child: Row(
//       //             children:[
//       //               Padding(
//       //                 padding: const EdgeInsets.only(left: 20),
//       //                 child: Icon(Icons.language),
//       //               ),
//       //               SizedBox(width: 20,),
//       //               Text('Select Language',style: MyTheme.lightTheme.textTheme.titleSmall,),
//       //             ]
//       //         ),
//       //       ),
//       //       SizedBox(height: 50,),
//       //       InkWell(
//       //         onTap: (){},
//       //         child: Row(
//       //             children:[
//       //               Padding(
//       //                 padding: const EdgeInsets.only(left: 20),
//       //                 child: Icon(Icons.dark_mode),
//       //               ),
//       //               SizedBox(width: 20,),
//       //               Text('Theme Mode',style: MyTheme.lightTheme.textTheme.titleSmall,),
//       //             ]
//       //         ),
//       //       ),
//       //       SizedBox(height: 50,),
//       //       InkWell(
//       //         onTap: (){},
//       //         child: Row(
//       //             children:[
//       //               Padding(
//       //                 padding: const EdgeInsets.only(left: 20),
//       //                 child: Icon(Icons.notifications),
//       //               ),
//       //               SizedBox(width: 20,),
//       //               Text('Notifications',style: MyTheme.lightTheme.textTheme.titleSmall,),
//       //             ]
//       //         ),
//       //       ),
//       //       SizedBox(height: 50,),
//       //       InkWell(
//       //         onTap: (){},
//       //         child: Row(
//       //             children:[
//       //               Padding(
//       //                 padding: const EdgeInsets.only(left: 20),
//       //                 child: Icon(Icons.history),
//       //               ),
//       //               SizedBox(width: 20,),
//       //               Text('Order History',style: MyTheme.lightTheme.textTheme.titleSmall,),
//       //             ]
//       //         ),
//       //       ),
//       //       SizedBox(height: 50,),
//       //       InkWell(
//       //         onTap: (){},
//       //         child: Row(
//       //             children:[
//       //               Padding(
//       //                 padding: const EdgeInsets.only(left: 20),
//       //                 child: Icon(Icons.description),
//       //               ),
//       //               SizedBox(width: 20,),
//       //               Text('Delivery Address',style: MyTheme.lightTheme.textTheme.titleSmall,),
//       //             ]
//       //         ),
//       //       ),
//       //       SizedBox(height: 50,),
//       //       InkWell(
//       //         onTap: (){},
//       //         child: Row(
//       //             children:[
//       //               Padding(
//       //                 padding: const EdgeInsets.only(left: 20),
//       //                 child: Icon(Icons.support_agent),
//       //               ),
//       //               SizedBox(width: 20,),
//       //               Text('Support Center',style: MyTheme.lightTheme.textTheme.titleSmall,),
//       //             ]
//       //         ),
//       //       ),
//       //
//       //       SizedBox(height: 50,),
//       //       InkWell(
//       //         onTap: (){},
//       //         child: Row(
//       //             children:[
//       //               Padding(
//       //                 padding: const EdgeInsets.only(left: 20),
//       //                 child: Icon(Icons.newspaper),
//       //               ),
//       //               SizedBox(width: 20,),
//       //               Text('About App',style: MyTheme.lightTheme.textTheme.titleSmall,),
//       //             ]
//       //         ),
//       //       ),
//       //
//       //       SizedBox(height: 70,),
//       //       InkWell(
//       //
//       //         onTap: (){},
//       //         child: Center(
//       //           child: Text(
//       //             'Log Out',
//       //             style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),
//       //
//       //           ),
//       //         ),
//       //       ),
//       //
//       //
//       //     ],
//       //   ),
//       // ),
//       body: //bottomNavigationBar: BottomNavigationBarExample()
//   //     Column(
//   //   children: <Widget>[
//   //     Align(
//   //       alignment: Alignment.topCenter,
//   //       child: Padding(
//   //         padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10),
//   //         child: SearchAnchor.bar(
//   //           barHintText: 'Search here',
//   //             suggestionsBuilder:   (BuildContext context, SearchController controller){
//   //               return <Widget>[
//   //               Center(
//   //               child: Text('No search history.',
//   //               style: TextStyle(color: Colors.red)))
//   //               ];
//   //             },
//   //         ),
//   //       ),
//   //     ),
//   //     SizedBox(height: 20.0),
//   //
//   //        Padding(
//   //          padding: const EdgeInsets.only(right: 180.0),
//   //          child: Text('Recommended Items',style: MyTheme.lightTheme.textTheme.titleMedium,),
//   //        ),
//   //     SizedBox(height: 20.0,),
//   //
//   //     Expanded(
//   //       child: ListView.builder(itemBuilder: (context, index) =>
//   //           Padding(
//   //             padding: const EdgeInsets.all(8.0),
//   //             child: Container(
//   //               decoration:BoxDecoration(
//   //                 borderRadius: BorderRadius.circular(15),
//   //                 shape: BoxShape.rectangle,
//   //                 //color: Colors.black12,
//   //                 border: Border.all(width: 3,),
//   //               ),
//   //               child: Column(
//   //                 children: [
//   //                   Expanded(child: Image.asset('assets/images/item.png')),
//   //                   Text('price',style: TextStyle(fontSize: 15,color: MyTheme.primaryLight),),
//   //                   Text('Item 1',style: TextStyle(fontSize: 20),)
//   //
//   //                 ],
//   //               ),
//   //             ),
//   //           ),
//   //
//   //           itemCount:5,
//   //       scrollDirection: Axis.horizontal,),
//   //     ),
//   //
//   //               SizedBox(width: 10,),
//   //
//   //     SizedBox(height: 20.0,),
//   //     Padding(
//   //       padding: const EdgeInsets.only(right: 230.0),
//   //       child: Text('Nearby Sitters',style: MyTheme.lightTheme.textTheme.titleMedium,),
//   //     ),
//   //     SizedBox(height: 20.0,),
//   //     Expanded(
//   //       child:
//   //       ListView.builder(
//   //         itemBuilder: (context, index) => Padding(
//   //           padding: const EdgeInsets.all(8.0),
//   //           child: Container(
//   //           decoration:BoxDecoration(
//   //           borderRadius: BorderRadius.circular(15),
//   //           shape: BoxShape.rectangle,
//   //           //color: Colors.black12,
//   //           border: Border.all(width: 3,),
//   //           ),
//   //           child: Column(
//   //           children: [
//   //           Image.asset('assets/images/a.png'),
//   //           Text('2.5 km',style: TextStyle(fontSize: 15,color: MyTheme.primaryLight),),
//   //           Text('5.0(100 Reviews)',style: TextStyle(fontSize: 20),)
//   //
//   //           ],
//   //           ),
//   //           ),
//   //         ),
//   //       itemCount: 5,
//   //         scrollDirection: Axis.horizontal,
//   //       )
//   //
//   //     ),
//   //
//   //
//   //   ],
//   // ),
//       // bottomNavigationBar: BottomNavigationBar(items: [
//       //   // BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
//       //   // BottomNavigationBarItem(icon: Icon(Icons.shop),label: "Shop"),
//       //   BottomNavigationBarItem(icon: Icon(Icons.book),label: "Book"),
//       //   BottomNavigationBarItem(icon: Icon(Icons.favorite_outline),label: "Favorite"),
//       //   BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile",),
//       // ],
//       //   onTap:NavigationBar ,
//         bottomNavigationBar: BottomNavigationBarExample()
//
//       );
//
//
//
//
//
//       //body: ,
//
//   }
// }
class HomeScreen extends StatelessWidget {
  static const String routeName = 'HomeScreen';


  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarExample(),
    );
  }
}

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({super.key});

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static  List<Widget> _widgetOptions = <Widget>[

    Container(
      color: MyTheme.offwhiteColor,
      child: Column(

            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10),
                  child: SearchAnchor.bar(
                    barHintText: 'Search here',
                    suggestionsBuilder:   (BuildContext context, SearchController controller){
                      return <Widget>[
                        Center(
                            child: Text('No search history.',
                                style: TextStyle(color: Colors.red)))
                      ];
                    },
                  ),
                ),
              ),
              SizedBox(height: 20.0),

              Padding(
                padding: const EdgeInsets.only(right: 180.0),
                child: Text('Recommended Items',style: MyTheme.lightTheme.textTheme.titleMedium,),
              ),
              SizedBox(height: 20.0,),

              Expanded(
                child: ListView.builder(itemBuilder: (context, index) =>
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,new MaterialPageRoute(
                            builder: (context)=> new ItemDetails(),
                          ));
                        },
                        child: Material(
                          elevation: 5,
                          //shadowColor: Colors.black45,
                          child: Container(

                            decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              //shape: BoxShape.rectangle,
                              //color: Colors.pink,
                              //color: Colors.black12,
                              border: Border.all(width:3,color: Colors.transparent),
                            ),
                            child: Column(
                              children: [
                                Expanded(child: Container(
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                                    child: Image.asset('assets/images/item.png'))),
                                Row(
                                  children: [
                                    Text('price',style: TextStyle(fontSize: 15,color: MyTheme.primaryLight),),
                                    SizedBox(width: 20,),
                                    FavoriteButton(
                                      valueChanged: (_) {},
                                      iconSize: 40,
                                    ),
                                  ],
                                ),
                                Text('Item 1',style: TextStyle(fontSize: 20),)

                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                  itemCount:5,
                  scrollDirection: Axis.horizontal,),
              ),

              SizedBox(width: 10,),

              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.only(right: 230.0),
                child: Text('Nearby Sitters',style: MyTheme.lightTheme.textTheme.titleMedium,),
              ),
              SizedBox(height: 20.0,),
              Expanded(
                  child:
                  ListView.builder(
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 5,
                        //shadowColor: Colors.black45,
                        child: Container(
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            //shape: BoxShape.rectangle,
                            //color: Colors.black12,
                            border: Border.all(width: 3,color: Colors.transparent),
                          ),
                          child: Column(
                            children: [
                              Image.asset('assets/images/img.png'),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('2.5 km',style: TextStyle(fontSize: 15,color: MyTheme.primaryLight),),
                                  SizedBox(width: 20,),
                                  FavoriteButton(
                                    valueChanged: (_) {},
                                    iconSize: 40,
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text('5.0',style: TextStyle(fontSize: 20),),
                                  SizedBox(width: 5,),
                                  Text('(100 Reviews)',style: TextStyle(fontSize: 20),)
                                ],
                              )

                            ],
                          ),
                        ),
                      ),
                    ),
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                  )

              ),


            ],
          ),
    ),
    Shop(),
    SitterScreen(),
    FavouriteScreen(),
    OwnerProfileScreen(),
//WalkerProfileScreen(),
  ];
 List<String> appBarTitle = ["Home","Shop","Booking","Favourite","Profile"];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      title = appBarTitle[index];
      //title = Shop(AppBar: );

    });
  }
  var title;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: MyTheme.primaryLight,
          leading: Builder(
            builder: (context){
              return IconButton(
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(Icons.table_rows_sharp,color: MyTheme.whiteColor,),
                ),
              );
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Text('${title}',style: MyTheme.lightTheme.textTheme.titleLarge,),
          ),
          centerTitle: true,
        ),
      ),
      drawer:Drawer(
        backgroundColor: Color(0xffEDEDED),
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text('Settings',style: MyTheme.lightTheme.textTheme.titleMedium,),
                ),

              ],
            ),
            InkWell(
              onTap: (){},
              child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.language),
                    ),
                    SizedBox(width: 20,),
                    Text('Select Language',style: MyTheme.lightTheme.textTheme.titleSmall,),
                  ]
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){},
              child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.dark_mode),
                    ),
                    SizedBox(width: 20,),
                    Text('Theme Mode',style: MyTheme.lightTheme.textTheme.titleSmall,),
                    SizedBox(width: 70,),
                    Switch(value: true, onChanged: (bool newVal){
                      return setState(() {
                        newVal = true;
                      });
                    }),
                  ]
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){},
              child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.notifications),
                    ),
                    SizedBox(width: 20,),
                    Text('Notifications',style: MyTheme.lightTheme.textTheme.titleSmall,),
                  ]
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){},
              child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.history),
                    ),
                    SizedBox(width: 20,),
                    Text('Order History',style: MyTheme.lightTheme.textTheme.titleSmall,),
                  ]
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.push(context,new MaterialPageRoute(
                    builder: (context)=> new CartScreen(),
                ));
              },
              child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.shopping_cart_outlined),
                    ),
                    SizedBox(width: 20,),
                    Text('Cart',style: MyTheme.lightTheme.textTheme.titleSmall,),
                  ]
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){},
              child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.support_agent),
                    ),
                    SizedBox(width: 20,),
                    Text('Support Center',style: MyTheme.lightTheme.textTheme.titleSmall,),
                  ]
              ),
            ),

            SizedBox(height: 50,),
            InkWell(
              onTap: (){},
              child: Row(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.newspaper),
                    ),
                    SizedBox(width: 20,),
                    Text('About App',style: MyTheme.lightTheme.textTheme.titleSmall,),
                  ]
              ),
            ),

            SizedBox(height: 70,),
            InkWell(

              onTap: (){
                Navigator.push(context,new MaterialPageRoute(
                  builder: (context)=> new LoginScreen(),
                ));
              },
              child: Center(
                child: Text(
                  'Log Out',
                  style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),

                ),
              ),
            ),


          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar:
      BottomNavigationBar(

        items:  <BottomNavigationBarItem>[

          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              backgroundColor: Colors.white
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Shop',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book_outlined),
            label: 'Booking',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favourite',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined,),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: MyTheme.primaryLight,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),

    );
  }
}
