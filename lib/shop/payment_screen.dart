import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatelessWidget {
static const String routeName = 'PaymentScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            child: Text('Payment',style: MyTheme.lightTheme.textTheme.titleLarge,),
          ),
          centerTitle: true,
        ),
      ),
      
    );

  }
}
