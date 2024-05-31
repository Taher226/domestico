import 'package:flutter/material.dart';

import '../my_theme.dart';

class AboutApp extends StatelessWidget {
static const String routeName = 'AboutApp';

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
            child: Text('About App',style: MyTheme.lightTheme.textTheme.titleLarge,),
          ),
          centerTitle: true,

        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text('Domestico is a comprehensive pet care application'
                ' designed to simplify and enhance the experience of pet ownership.'
                'The app offers a wide range of features,'
                ' including scheduling veterinary appointments,'
                ' tracking vaccination records,'
                ' and setting reminders for feeding and grooming.'
                ' It also provides a platform for pet owners to connect with local pet services such as groomers, trainers, and pet sitters.'
                ' Domestico user-friendly interface ensures that all essential pet care information is easily accessible,'
                ' helping pet owners stay organized and attentive to their pets needs. '
                'Additionally, the app includes a community forum where users can share tips, ask questions, and connect with fellow pet enthusiasts.'
                ' Domestico aims to be the ultimate companion for modern pet owners,'
                ' promoting a healthier and happier life for pets'
              ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500 ),)),
          ),
        ],
      ),
    );
  }
}
