import 'package:domestico/my_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Shop extends StatelessWidget {
static const String routeName = 'Shop';
// String AppBar ;
// Shop({
//   required this.AppBar
// });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShopCategories(),
    );


  }
}

class ShopCategories extends StatefulWidget {
  const ShopCategories({super.key});

  @override
  State<ShopCategories> createState() => _ShopCategoriesState();
}

class _ShopCategoriesState extends State<ShopCategories> {

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


/*Scaffold(
body: Container(
color: MyTheme.offwhiteColor,
child: Column(
children: [
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
SizedBox(height: 20,),
Padding(
padding: const EdgeInsets.all(16.0),
child: Row(
//crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.center,
children: [
Column(
children: [
ElevatedButton(
style: ElevatedButton.styleFrom(
//fixedSize: Size.square(5)
),
onPressed: (){},
child: Image.asset('assets/icons/a.png',width: 20,height: 20,),

),

Text('Food',style: MyTheme.lightTheme.textTheme.titleSmall)
],
),
SizedBox(width: 20,),
Column(
children: [
ElevatedButton(
style: ElevatedButton.styleFrom(
//fixedSize: Size.square(5)
),
onPressed: (){},
child: Image.asset('assets/icons/b.png',width: 20,height: 20,),

),
Text('Vet Items',style: MyTheme.lightTheme.textTheme.titleSmall)
],
),
SizedBox(width: 20,),
Column(
children: [
ElevatedButton(
style: ElevatedButton.styleFrom(
//fixedSize: Size.square(5)
),
onPressed: (){},
child: Image.asset('assets/icons/c.png',width: 20,height: 20,),

),
Text('Accessories',style: MyTheme.lightTheme.textTheme.titleSmall)
],
),
SizedBox(width: 20,),
Column(
children: [
ElevatedButton(
style: ElevatedButton.styleFrom(
//fixedSize: Size.square(5)
),
onPressed: (){},
child: Image.asset('assets/icons/d.png',width: 20,height: 20,),

),
Text('IOT Devices',style: MyTheme.lightTheme.textTheme.titleSmall,)
],
),
],
),

),


],
),
),
);*/