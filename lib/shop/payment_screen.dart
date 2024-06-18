import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  static const String routeName = 'PaymentScreen';

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String _selectedView = 'Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              'Payment',
              style: MyTheme.lightTheme.textTheme.titleLarge,
            ),
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16),
            child: Text(
              'Enter Your Information',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your Name',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Container(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: 'Enter your Address',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              height: 50,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: 'Enter your Phone Number',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
          ),

          Row(
            children: [
              Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 0),
              child: Text(
                'Select Payment Method',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
              PopupMenuButton(
                icon: Icon(Icons.arrow_drop_down_sharp),
                onSelected: (value) => setState(() => _selectedView = value),
                itemBuilder: (_) => [
                  new CheckedPopupMenuItem(
                    checked: _selectedView == 'Card',
                    value: 'Card',
                    child: new Text('Card'),
                  ),
                  new CheckedPopupMenuItem(
                    checked: _selectedView == 'Swipe',
                    value: 'Swipe',
                    child: new Text('Swipe'),
                  ),

                ],
              ),

            ],
          ),
          new Center(child: new Text(_selectedView))
            ],
          )



    );
  }
}
