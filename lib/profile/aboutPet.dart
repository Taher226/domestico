import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';

class AboutPet extends StatefulWidget {
  final String name;
  final String pic;
  final String breed;
  final String gender;
  const AboutPet(
      {super.key,
      required this.name,
      required this.pic,
      required this.breed,
      required this.gender});
  static const String routeName ='AboutPet';
  @override
  State<AboutPet> createState() => _AboutPetState();
}

class _AboutPetState extends State<AboutPet> {
  void _changeItems(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  int _currentIndex = 0;
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
              child: Text('About Pet',style: MyTheme.lightTheme.textTheme.titleLarge,),
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: const Color.fromARGB(255, 247, 245, 245),
            child: Column(children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(widget.pic)),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40)),
                    color: const Color.fromARGB(255, 226, 226, 238)),
              ),
              //SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(top: 15, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      widget.breed,
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: widget.gender == 'female'
                                          ? Colors.pink[200]
                                          : Colors.blue[300],
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Icon(
                                    widget.gender == 'female'
                                        ? Icons.female_outlined
                                        : Icons.male_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Icon(Icons.pets_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "About ${widget.name}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      // height: 50,
                      // width: 50,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            //padding: EdgeInsets.all(),
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 216, 191, 238),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                Text("Age"),
                                Text(
                                  "1y 4m 11d",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff6314A8)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.all(),
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 216, 191, 238),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                Text("Weight"),
                                Text(
                                  "7.5 kg",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff6314A8)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.all(),
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 216, 191, 238),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                Text("height"),
                                Text(
                                  "54 cm",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff6314A8)),
                                )
                              ],
                            ),
                          ),
                          Container(
                            //padding: EdgeInsets.all(),
                            height: 55,
                            width: 80,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 216, 191, 238),
                                borderRadius: BorderRadius.circular(14)),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 6,
                                ),
                                Text("Color"),
                                Text(
                                  "Black",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: const Color(0xff6314A8)),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "My first dog which was gifted by my mother for my 20th bitrthday"),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Icon(Icons.tag_faces_sharp),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "${widget.name}'s Status",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 500,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 183, 155, 207),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Icon(
                                  Icons.health_and_safety_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Health",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Abnormal",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Last Vaccinated (2mon Ago)",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff6314A8)),
                                  ),
                                ],
                              ),
                             SizedBox(width: 45,),
                              Container(
                                height: 35,
                                width: 115,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xff6314A8),
                                ),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'Contact Vet',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(width: 3,),
                                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,size: 15,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                             Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 183, 155, 207),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Icon(
                                  Icons.food_bank_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Food",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Hungry",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Last Feed (1h Ago)",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                        color: const Color(0xff6314A8)),
                                  ),
                                ],
                              ),
                             SizedBox(width: 89,),
                              Container(
                                height: 35,
                                width: 115,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xff6314A8),
                                ),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'Check food',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(width: 5,),
                                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,size: 15,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                             Row(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 183, 155, 207),
                                    borderRadius: BorderRadius.circular(100)),
                                child: Icon(
                                  Icons.mood_bad_outlined,
                                  size: 35,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mood",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Abnormal",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                             SizedBox(width: 135,),
                              Container(
                                height: 35,
                                width: 115,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: const Color(0xff6314A8),
                                ),
                                child: MaterialButton(
                                  onPressed: () {},
                                  child: Row(
                                    children: [
                                      Text(
                                        'Whistle',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                      SizedBox(width: 25,),
                                      Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,size: 15,)
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
        ));
  }
}
