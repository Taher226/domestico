import 'package:domestico/my_theme.dart';
import 'package:domestico/profile/aboutPet.dart';
import 'package:domestico/profile/addPet.dart';
import 'package:flutter/material.dart';

class MyPets extends StatefulWidget {
  const MyPets({super.key});
static const String routeName ='MyPets';
  @override
  State<MyPets> createState() => _MyPetsState();
}

class _MyPetsState extends State<MyPets> {
  void _changeItems(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  int _currentIndex = 0;
  List mostPopular = [
    {
      "image": "assets/images/Bella.png",
      "name": "Bella",
      "breed":'Border collie',
      "gender":'male'
    },
    {
      "image": "assets/images/Roudy.png",
      "name": "Roudy",
      "breed":'rottweiler',
      "gender":'male'
    },
    {
      "image": "assets/images/Furry.png",
      "name": "Furry",
      "breed":'samoyed',
      "gender":'female'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            //backgroundColor: const Color.fromARGB(255, 247, 245, 245),
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 28,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag_outlined, size: 28),
                  label: "Shop"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.book_outlined, size: 28), label: "Book"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_border, size: 28),
                  label: "Favorite"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_outlined, size: 28),
                  label: "Profile"),
            ],
            unselectedItemColor: Colors.black,
            selectedItemColor: const Color(0xff6314A8),
            currentIndex: _currentIndex,
            onTap: _changeItems),
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
              child: Text('My Pets',style: MyTheme.lightTheme.textTheme.titleLarge,),
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            color: const Color.fromARGB(255, 247, 245, 245),
            child: Column(children: [
              Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(20),
                    height: 200,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.pets_outlined),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "My Pets",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 9,
                        ),
                        Container(
                          height: 125,
                          child: ListView.builder(
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            scrollDirection: Axis.horizontal,
                            itemCount: mostPopular.length,
                            itemBuilder: (context, i) {
                              return Column(children: [
                                Container(
                                    margin: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    height: 95,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                mostPopular[i]["image"])),
                                        color: const Color.fromARGB(
                                            255, 199, 199, 199),
                                        borderRadius: BorderRadius.circular(15)),
                                    child: MaterialButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                     AboutPet(name:"${mostPopular[i]["name"]}", pic: "${mostPopular[i]["image"]}", breed: "${mostPopular[i]["breed"]}",gender: "${mostPopular[i]["gender"]}",)));
                                      },
                                    )),
                                const SizedBox(height: 10),
                                SizedBox(
                                  width: 55,
                                  child: Text(mostPopular[i]["name"],
                                      //maxLines: 2,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          overflow: TextOverflow.ellipsis)),
                                )
                              ]);
                            },
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 295,
                        width: 180,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Icon(Icons.sentiment_very_dissatisfied_rounded),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Pet Status",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/Bella.png')),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/DomestecoStatus.png')),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 0.3,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/Roudy.png')),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/DomestecoStatus.png')),
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              thickness: 0.7,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/Furry.png')),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 40,
                                  width: 110,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/DomestecoStatus.png')),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                             //padding: EdgeInsets.only(right: 10),
                              height: 20,
                              width: 190,
                              child:
                              MaterialButton(
                                onPressed: (){},
                                child:
                              Row(
                                children: [
                                  SizedBox(
                                    width: 30,
                                  ),
                                  Text(
                                    "Check Pets",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 15,
                                  ),
                                ],
                              ),)
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        height: 295,
                        width: 180,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Icon(Icons.location_on),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Pet Location",
                                    style: TextStyle(
                                        fontSize: 19,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // SizedBox(
                            //   height: 5,
                            // ),
                            Container(
                              height: 190,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/DomistecoMap.png')),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 0),
                              height: 20,
                              width: 190,
                              child:
                              MaterialButton(
                                onPressed: (){},
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "Track Pets",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:  const Color(0xff6314A8),
                ),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.push(context,new MaterialPageRoute(
                      builder: (context)=> new AddPet(),
                    ));
                  },
                  child: Text('Add Pet',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),

                  ),
                ),

            ]),
          ),
        ));
  }
}
