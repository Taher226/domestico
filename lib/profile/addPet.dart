import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';

class AddPet extends StatefulWidget {
  const AddPet({super.key});
  static const String routeName ='AddPet';
  @override
  State<AddPet> createState() => _AddPetState();
}

class _AddPetState extends State<AddPet> {
  void _changeItems(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  int _currentIndex = 0;

  final TextEditingController PetName = TextEditingController();
  final TextEditingController Breed = TextEditingController();
  final TextEditingController Gender = TextEditingController();
  final TextEditingController Age = TextEditingController();
  final TextEditingController Colour = TextEditingController();
  final TextEditingController Height = TextEditingController();
  final TextEditingController Weight = TextEditingController();

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
              child: Text('Add Pet',style: MyTheme.lightTheme.textTheme.titleLarge,),
            ),
            centerTitle: true,
          ),
        ),
        body: SingleChildScrollView(
          //scrollDirection: ,
          //physics: NeverScrollableScrollPhysics(),
          child: Container(
            height: 720,
             color: const Color.fromARGB(255, 255, 255, 255),
            child: Column(children: [
              Container(
                margin: EdgeInsets.only(left: 30,top: 20,right: 275),
                child: Text("Added Pets",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
              SizedBox(height: 20,),
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   color: Color.fromARGB(217, 217, 217, 217),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(image: AssetImage("assets/images/Bella.png"))),
                      child: Text(""),
                    ),
                    SizedBox(width: 55,),
                    Text("Bella",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 105,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.link))
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   color: Color.fromARGB(217, 217, 217, 217),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(image: AssetImage("assets/images/Roudy.png"))),
                      child: Text(""),
                    ),
                    SizedBox(width: 54,),
                    Text("Roudy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 94,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.link))
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                height: 80,
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                   color: Color.fromARGB(217, 217, 217, 217),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.all(7),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(image: AssetImage("assets/images/Furry.png"))),
                      child: Text(""),
                    ),
                    SizedBox(width: 55,),
                    Text("Furry",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(width: 105,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.link))
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.only(left: 30,top: 20,right: 210),
                child: Text("Manually Add Pet",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                SizedBox(height: 15,),
                Container(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    controller: PetName,
                    decoration: InputDecoration(
                      fillColor:Color.fromARGB(217, 217, 217, 217),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: const Color(0xff6314A8),)
                      ),
                      enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: const Color.fromARGB(255, 226, 222, 222))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                      hintText: 'Pet Name',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  )),
                  SizedBox(height: 10,),
                  Container(
                  width: 350,
                  height: 50,
                  child: TextFormField(
                    controller: Breed,
                    decoration: InputDecoration(
                      fillColor:Color.fromARGB(217, 217, 217, 217),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: const Color(0xff6314A8),)
                      ),
                      enabledBorder: OutlineInputBorder(
                         borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: const Color.fromARGB(255, 226, 222, 222))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                        ),
                      hintText: 'Breed Name',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)
                    ),
                  )),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                    width: 110,
                    height: 50,
                    child: TextFormField(
                      controller: Gender,
                      decoration: InputDecoration(
                        fillColor:Color.fromARGB(217, 217, 217, 217),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color(0xff6314A8),)
                        ),
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 226, 222, 222))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          ),
                        hintText: 'Gender',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    )),
                    SizedBox(width: 8,),
                    Container(
                    width: 110,
                    height: 50,
                    child: TextFormField(
                      controller: Age,
                      decoration: InputDecoration(
                        fillColor:Color.fromARGB(217, 217, 217, 217),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color(0xff6314A8),)
                        ),
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 226, 222, 222))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          ),
                        hintText: 'Age',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    )),
                    SizedBox(width: 8,),
                    Container(
                    width: 110,
                    height: 50,
                    child: TextFormField(
                      controller: Colour,
                      decoration: InputDecoration(
                        fillColor:Color.fromARGB(217, 217, 217, 217),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color(0xff6314A8),)
                        ),
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 226, 222, 222))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          ),
                        hintText: 'Color',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    )),
                    //SizedBox(width: 10,),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: Row(
                      children: [
                        Container(
                    width: 170,
                    height: 50,
                    child: TextFormField(
                      controller: Height,
                      decoration: InputDecoration(
                        fillColor:Color.fromARGB(217, 217, 217, 217),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color(0xff6314A8),)
                        ),
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 226, 222, 222))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          ),
                        hintText: 'Height',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    )),
                    SizedBox(width: 6,),
                    Container(
                    width: 170,
                    height: 50,
                    child: TextFormField(
                      controller: Weight,
                      decoration: InputDecoration(
                        fillColor:Color.fromARGB(217, 217, 217, 217),
                        filled: true,
                        focusedBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color(0xff6314A8),)
                        ),
                        enabledBorder: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: const Color.fromARGB(255, 226, 222, 222))),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                          ),
                        hintText: 'Weight',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold)
                      ),
                    )),
                      ],
                    ),
                  ),
                  SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color(0xff6314A8),
                ),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();

                  },
                  child: Center(child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),)
                ),
              ),
                  
            ]),
          ),
        ));
  }
}