import 'package:domestico/Home/SittersHome.dart';
import 'package:domestico/booking/reviews_screen.dart';
import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddReview extends StatelessWidget {
static const String routeName = 'AddReviewScreen';
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
            child: Text('Add Review',style: MyTheme.lightTheme.textTheme.titleLarge,),
          ),
          centerTitle: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: MyTheme.primaryLight,
        
                    child: CircleAvatar(
                      radius: 23,
                      backgroundImage: NetworkImage('https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA4L2pvYjEwMzQtZWxlbWVudC0wNi0zOTcucG5n.png'),
        
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('Name',style: MyTheme.lightTheme.textTheme.titleMedium,),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBar.builder(
                  initialRating: 2.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                )
              ],
            ),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text('Share more about your experience',style: MyTheme.lightTheme.textTheme.titleSmall,),
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
                    builder: (context)=> new ReviewsScreen(),
                  ));
                  // Navigator.of(context).pushNamed('ReviewsScreen');
                },
              style: TextButton.styleFrom(
            backgroundColor: MyTheme.primaryLight,
        
            ),
                child: Text('  Post  ',style: TextStyle(
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
