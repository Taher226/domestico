import 'package:domestico/booking/sitter_details.dart';
import 'package:domestico/booking/sitter_models.dart';
import 'package:domestico/my_theme.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SitterScreen extends StatelessWidget {
  const SitterScreen({super.key});
  static const String routeName = 'SitterScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 10,right: 10),
              child: SearchAnchor.bar(
                barHintText: 'Search here',
                suggestionsBuilder:   (BuildContext context, SearchController controller){
                  return <Widget>[
                    Center(
                        child: Text('No search history.',
                            style: TextStyle(color: Colors.red)))
                  ];
                },
              ),
            ),
          ),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(20),
              itemCount: Models().sitterModels.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,new MaterialPageRoute(
                      builder: (context)=> new SitterDetails(),
                    ));
                    ///// hena el next widget
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        const BoxShadow(
                          offset: Offset(0, 5),
                          blurRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: SizedBox(
                            height: double.infinity,
                            width: 100,
                            child: Image.network(
                              Models().sitterModels[index].imageSrc,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    Models()
                                        .sitterModels[index]
                                        .category
                                        .toString()
                                        .substring(11),
                                    style: const TextStyle(
                                      color: Colors.purple,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  FavoriteButton(
                                    valueChanged: () {},
                                    iconSize: 40,
                                  ),

                                ],
                              ),
                              Text(
                                '${Models().sitterModels[index].name}',
                                style: const TextStyle(fontSize: 24),
                              ),
                              Text(
                                '${Models().sitterModels[index].discreption}',
                                maxLines: 1,
                                overflow: TextOverflow.clip,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
