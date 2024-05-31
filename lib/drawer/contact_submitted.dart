import 'package:flutter/material.dart';

import '../my_theme.dart';

class ContactSubmitted extends StatelessWidget {
static const String routeName = 'ContactSubmitted';

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
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Icon(Icons.arrow_back_ios_rounded,color: MyTheme.whiteColor,),
                ),
              );
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Text('Contact Us',style: MyTheme.lightTheme.textTheme.titleLarge,),
          ),
          centerTitle: true,

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check_circle_outline_outlined,color: Colors.green,size: 100,),
          SizedBox(height: 30,),
          Center(child: Text('Your Suggestion Submitted Successfully',style: MyTheme.lightTheme.textTheme.titleMedium,)),
          SizedBox(height: 20,),
          Center(child: Text('We will respond to you as soon as possible',style: MyTheme.lightTheme.textTheme.titleSmall,)),
        ],
      ),

    );
  }
}
