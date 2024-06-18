import 'package:domestico/my_theme.dart';
import 'package:domestico/shop/item_details.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<bool> widgetVisibility = [true, false, false, false];
  List<String> images =['assets/images/fff.jpeg',
    'assets/images/gg.jpeg'
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: MyTheme.offwhiteColor,
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 20.0, left: 10, right: 10),
                child: SearchAnchor.bar(
                  barHintText: 'Search here',
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return <Widget>[
                      Center(
                          child: Text('No search history.',
                              style: TextStyle(color: Colors.red))),
                    ];
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildCategoryButton(0, 'Food', 'assets/icons/a.png'),
                  SizedBox(
                    width: 20,
                  ),
                  buildCategoryButton(1, 'Vet Items', 'assets/icons/b.png'),
                  SizedBox(
                    width: 20,
                  ),
                  buildCategoryButton(2, 'Accessories', 'assets/icons/c.png'),
                  SizedBox(
                    width: 15,
                  ),
                  buildCategoryButton(3, 'IOT Devices', 'assets/icons/d.png'),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children:
                List<Widget>.generate(widgetVisibility.length, (int index) {
                  if (widgetVisibility[index]) {
                    return buildCategoryWidget(index);
                  } else {
                    return SizedBox
                        .shrink(); // Return an empty SizedBox if the widget is not visible
                  }
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryButton(int index, String text, String imagePath) {
    return Column(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () {
            setState(() {
              widgetVisibility =
                  List.generate(widgetVisibility.length, (i) => i == index);

            });
          },
          child: Image.asset(imagePath, width: 20, height: 20),
        ),
        Text(text, style: MyTheme.lightTheme.textTheme.titleSmall),
      ],
    );
  }

  Widget buildCategoryWidget(int index) {
    switch (index) {
      case 0:
        return Expanded(
            child: GridView.builder(

              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),

              itemBuilder: (context, index) => Padding(
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        //shape: BoxShape.rectangle,
                        //color: Colors.black12,
                        border: Border.all(width: 3, color: Colors.transparent),
                      ),
                      child: Column(
                        children: [
                          Image.asset(images.first,width: 120,height: 120,),

                          Text(
                            'Price',
                            style:
                            TextStyle(fontSize: 15, color: MyTheme.primaryLight),
                          ),
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 6,
              scrollDirection: Axis.vertical,
            ));
      case 1:
        return Expanded(
            child: GridView.builder(

              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),

              itemBuilder: (context, index) => Padding(
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        //shape: BoxShape.rectangle,
                        //color: Colors.black12,
                        border: Border.all(width: 3, color: Colors.transparent),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/vet.png',width: 120,height: 120,),
                          Text(
                            'Price',
                            style:
                            TextStyle(fontSize: 15, color: MyTheme.primaryLight),
                          ),
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 6,
              scrollDirection: Axis.vertical,
            ));
      case 2:
        return Expanded(
            child: GridView.builder(

              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),

              itemBuilder: (context, index) => Padding(
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        //shape: BoxShape.rectangle,
                        //color: Colors.black12,
                        border: Border.all(width: 3, color: Colors.transparent),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/acc.png',width: 120,height: 120,),
                          Text(
                            'Price',
                            style:
                            TextStyle(fontSize: 15, color: MyTheme.primaryLight),
                          ),
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 6,
              scrollDirection: Axis.vertical,
            ));
      case 3:
        return Expanded(
            child: GridView.builder(

              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),

              itemBuilder: (context, index) => Padding(
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        //shape: BoxShape.rectangle,
                        //color: Colors.black12,
                        border: Border.all(width: 3, color: Colors.transparent),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/images/device.png',width: 120,height: 120,),
                          Text(
                            'Price',
                            style:
                            TextStyle(fontSize: 15, color: MyTheme.primaryLight),
                          ),
                          Text(
                            'Name',
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              itemCount: 6,
              scrollDirection: Axis.vertical,
            ));
      default:
        return Container();
    }
  }
}