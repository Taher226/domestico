
import 'package:domestico/my_theme.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import '../shop/item_details.dart';

class FavouriteScreen extends StatelessWidget {
  static const String routeName = 'FavouriteScreen';



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
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
              padding: const EdgeInsets.only(right: 230.0),
              child: Text('Favourite Items',style: MyTheme.lightTheme.textTheme.titleMedium,),
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
                                  //Icon(Icons.favorite,color: Colors.red,)
                                  FavoriteButton(
                                    valueChanged: () {},
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
              child: Text('Favourite Sitters',style: MyTheme.lightTheme.textTheme.titleMedium,),
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
                            Text('5.0(100 Reviews)',style: TextStyle(fontSize: 20),)
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


    );


  }
}


