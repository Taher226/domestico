
import 'package:domestico/my_theme.dart';
import 'package:domestico/shop/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';


class ItemDetails extends StatefulWidget {
  static const String routeName = 'ItemDetails';

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {


    void _incrementCounter() {
      setState(() {

        _counter++;
      });
    }
    void _minusCounter() {
      setState(() {

        _counter--;
      });
    }
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 247, 245, 245),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: AppBar(
            backgroundColor: MyTheme.primaryLight,
            leading: Builder(
              builder: (context){
                return IconButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  icon: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Icon(Icons.arrow_back_ios_rounded,color: MyTheme.whiteColor,),
                  ),
                );
              },
            ),
            title: Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Text('Details',style: MyTheme.lightTheme.textTheme.titleLarge,),
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: const Color.fromARGB(255, 247, 245, 245),
            child: Column(
                children:[
              Container(
                height: 210,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    color: const Color.fromARGB(255, 226, 226, 238)),
                child: MaterialButton(
                    onPressed: () {},
                    child: Center(
                        child:
                          Icon(Icons.photo_camera_back_outlined,
                            size: 150,
                          ),
                          //size: 150,
                        )),
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Item Name",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Row(
                              children: [
                                Text('Brand: ',style:TextStyle(fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: MyTheme.primaryLight) ,),
                                Text('Name'),
                                SizedBox(
                                  width: 150,
                                ),
                                Text("Price",style:TextStyle(fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: MyTheme.primaryLight))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                            RatingBarIndicator(
                                rating: 2.5,
                                itemSize: 25,
                                itemBuilder: (_,__) => Icon(Icons.star,color: Colors.amber,)
                          )
                              ],
                            ),

                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Description',style:TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.blackColor) ,),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        Text('Quantity',style:TextStyle(fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.blackColor)),
                        SizedBox(
                          width: 120,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20.0),
                          child: IconButton(onPressed: _minusCounter, icon: Icon(Icons.minimize_rounded,size: 40,color: MyTheme.primaryLight,),),
                        ),
                        SizedBox(width: 10,),
                        Text('$_counter',style:TextStyle(fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.blackColor)),
                        SizedBox(width: 10,),
                        IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add,size: 40,color: MyTheme.primaryLight,),),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MyTheme.primaryLight
                      ),
                        onPressed: (){
                          Navigator.push(context,new MaterialPageRoute(
                            builder: (context)=> new CartScreen(),
                          ));
                        },
                        child: Text('Add to Cart',style: MyTheme.lightTheme.textTheme.titleSmall!.copyWith(color: MyTheme.whiteColor),)
                        ),

                  ],
                ),
              )
            ]),
          ),
        ));
  }
}

