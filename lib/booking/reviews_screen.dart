import 'package:domestico/booking/add_review.dart';
import 'package:domestico/my_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsScreen extends StatelessWidget {
  static const String routeName = 'ReviewsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: MyTheme.offwhiteColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          backgroundColor: MyTheme.primaryLight,
          leading: Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(
                    Icons.arrow_back_ios_rounded,
                    color: MyTheme.whiteColor,
                  ),
                ),
              );
            },
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              'Reviews & Ratings',
              style: MyTheme.lightTheme.textTheme.titleLarge,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    '4.5',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: MyTheme.blackColor),
                  ),
                ),
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      TRatingProgressIndicator(
                        text: '5',
                        value: 1.0,
                      ),
                      TRatingProgressIndicator(
                        text: '4',
                        value: 0.8,
                      ),
                      TRatingProgressIndicator(
                        text: '3',
                        value: 0.6,
                      ),
                      TRatingProgressIndicator(
                        text: '2',
                        value: 0.4,
                      ),
                      TRatingProgressIndicator(
                        text: '1',
                        value: 0.2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            TRatingBarIndicator(
              rating: 4.5,
            ),
            SizedBox(
              height: 30,
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index){
                    return
                      Column(
                        children: [
                          Material(
                            elevation: 9,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                        backgroundColor: MyTheme.primaryLight,
                                        child: CircleAvatar(
                                          radius: 23,
                                          backgroundImage: NetworkImage(
                                              'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIyLTA4L2pvYjEwMzQtZWxlbWVudC0wNi0zOTcucG5n.png'),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            'Name',
                                            style: MyTheme.lightTheme.textTheme.titleMedium,
                                          ),
                                          Text(
                                            'Just now',
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 1,
                                        width: MediaQuery.of(context).size.width * 0.85,
                                        color: MyTheme.primaryLight,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        '3.5',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: MyTheme.blackColor),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      TRatingBarIndicator(rating: 3.5),
                                    ],
                                  ),
                                  SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                        'fhgajgfadshfgdhgsdhfgshdfgshgfhsdgfhsdgfhsdgfhsdgfhsgdfhsg'),
                                  ),
                                  //SizedBox(height: 15,)
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15,)
                        ],
                      );
                  }

              ),
            ),


            SizedBox(
              height: 50,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,new MaterialPageRoute(
                    builder: (context)=> new AddReview(),
                  ));
                  //Navigator.of(context).pushNamed('AddReviewScreen');
                },
                style: TextButton.styleFrom(
                  backgroundColor: MyTheme.primaryLight,
                ),
                child: Text(
                  '  Add Review  ',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: MyTheme.whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TRatingBarIndicator extends StatelessWidget {
  const TRatingBarIndicator({super.key, required this.rating});
  final double rating;
  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
        rating: rating,
        itemSize: 20,
        itemBuilder: (_, __) => Icon(
          Icons.star,
          color: Colors.amber,
        ));
  }
}

class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });
  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              text,
              style: MyTheme.lightTheme.textTheme.titleSmall,
            )),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 10,
              backgroundColor: Colors.grey,
              borderRadius: BorderRadius.circular(7),
              valueColor: AlwaysStoppedAnimation(MyTheme.primaryLight),
            ),
          ),
        ),
      ],
    );
  }
}