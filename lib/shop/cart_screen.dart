import 'package:domestico/my_theme.dart';
import 'package:domestico/shop/payment_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartScreen extends StatefulWidget {
static const String routeName = 'CartScreen';

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
appBar: AppBar(
  backgroundColor: MyTheme.primaryLight,
  leading: IconButton(
    icon: Icon(Icons.arrow_back_ios_new_rounded, color: MyTheme.whiteColor),
    onPressed: () => Navigator.of(context).pop(),
  ),
  centerTitle: true,
  title: Text('Cart',style: MyTheme.lightTheme.textTheme.titleLarge,),
),
      body:Container(
        decoration: BoxDecoration(
          color: MyTheme.offwhiteColor
        ),
        child: Column(
            children: [
             Expanded(
               child: ListView.builder(

                   itemBuilder: (context,index){
                     return Slidable(


                       startActionPane: ActionPane(
                        extentRatio: 0.25,

                         motion: const ScrollMotion(),

                         children:  [

                           SlidableAction(
                             onPressed: (context){

                             },

                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(15),
                               bottomLeft: Radius.circular(15),

                             ),
                             backgroundColor: Color(0xFFFE4A49),
                             foregroundColor: Colors.white,
                             icon: Icons.delete,
                             label: 'Delete',
                           ),
                         ],
                       ),

                       child: Container(
                         margin: EdgeInsets.all(10),
                         padding: EdgeInsets.all(6),
                         decoration: BoxDecoration(
                           color: Colors.white,

                           borderRadius: BorderRadius.circular(15),
                         ),
                         child:Row(
                           children: [
                         Container(
                                        color: MyTheme.primaryLight,
                                        height: 90,
                                        width: 4,
                                      ),
                         Image.asset('assets/images/cartItem.png',height: 80,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text('Price',style: TextStyle(color: MyTheme.primaryLight,fontSize: 15),),
                             Text('Item Name',style: TextStyle(fontSize: 20)),
                             Text('Weight',style: TextStyle(color: Colors.grey,fontSize: 12),),
                           ],
                         ),
                             SizedBox(width: 130,),
                             Column(
                              // crossAxisAlignment: CrossAxisAlignment.end,
                               children: [
                                 IconButton(onPressed: _incrementCounter, icon: Icon(Icons.add,color: MyTheme.primaryLight,)),
                                 Text('$_counter',style: TextStyle(color: MyTheme.blackColor,fontSize: 18),),
                                 IconButton(onPressed: _minusCounter, icon: Icon(Icons.minimize,color: MyTheme.primaryLight,)),
                               ],
                             ),
                           ],
                         ) ,
                       ),
                     );
                   },
                 itemCount: 5,
               ),
             ),
              Column(
                children: [
                  Row(
                    children: [
                      Text('SubTotal',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 275,),
                      Text('EGP 100.00',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Discount',style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(width: 278,),
                      Text('EGP 40.00',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('Total',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(width: 290,),
                      Text('EGP 60.00',style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: ElevatedButton(
                  style: TextButton.styleFrom(
                    backgroundColor: MyTheme.primaryLight,
                  ),
                    onPressed: (){
                    /*showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 200,
                            color: Colors.amber,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  const Text('Modal BottomSheet'),
                                  ElevatedButton(
                                    child: const Text('Close BottomSheet'),
                                    onPressed: () => Navigator.pop(context),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                    );*/
                      Navigator.push(context,new MaterialPageRoute(
                        builder: (context)=> new PaymentScreen(),
                      ));
                    },
                    child: Text('Checkout',style: TextStyle(color:MyTheme.whiteColor),),
                ),
              ),
            ],
          ),
      ),


    );
  }
}



/* Container(
              decoration: BoxDecoration(
                color: MyTheme.whiteColor,
                borderRadius: BorderRadius.circular(15),
              ),
            child:Row(
              children: [

              ],
            ) ,
            ),
*/