import 'package:domestico/drawer/contact_submitted.dart';
import 'package:flutter/material.dart';

import '../my_theme.dart';

class ContactUs extends StatelessWidget {
  static const String routeName = 'ContactUs';

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
body: SingleChildScrollView(
    child: Column(
    children: [
      SizedBox(height: 40,),
    Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
    Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Text('Please enter your Suggestion/Issue',style: MyTheme.lightTheme.textTheme.titleMedium,),
    ),
    ],
    ),
    SizedBox(height: 50,),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
    minLines: 4,
    maxLines: 6,
    decoration: InputDecoration(

    border: OutlineInputBorder(),
    hintText: 'Describe your experience',
    ),

    ),
    ),
    SizedBox(height: 70,),
    /*MaterialButton(
              onPressed: () {  },
              color: Colors.red,
              child: Text(
                'Post',
                style: TextStyle(),
              ),
            ),*/
    ElevatedButton(
    onPressed: (){
    Navigator.push(context,new MaterialPageRoute(
    builder: (context)=> new ContactSubmitted(),
    ));
    // Navigator.of(context).pushNamed('ReviewsScreen');
    },
    style: TextButton.styleFrom(
    backgroundColor: MyTheme.primaryLight,

    ),
    child: Text('  Submit  ',style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
    color: MyTheme.whiteColor,
    ),),
    ),
    ],
    ),
    ),
    );
  }
}
