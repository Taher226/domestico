import 'package:domestico/login&register/Register_screen.dart';
import 'package:domestico/login&register/Sitter_register.dart';
import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';

class AccountType extends StatelessWidget {
static const String routeName = 'AccType';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.primaryLight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text(
                'Account Type',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                // Handle owner account type selection
                Navigator.push(context,new MaterialPageRoute(
                  builder: (context)=> new RegisterScreen(),
                ));
               // Navigator.of(context).pushNamed('RegisterScreen');
              },
              child: Column(
                children: [
                  Icon(Icons.pets, size: 50, color: MyTheme.primaryLight),
                  Text('Owner', style: TextStyle(fontSize: 18)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: MyTheme.primaryLight,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                // Handle sitter account type selection
                Navigator.push(context,new MaterialPageRoute(
                  builder: (context)=> new SitterRegister(),
                ));
                //Navigator.of(context).pushNamed('RegisterScreen');
              },
              child: Column(
                children: [
                  Icon(Icons.person, size: 50, color: MyTheme.primaryLight),
                  Text('Sitter', style: TextStyle(fontSize: 18)),
                ],
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: MyTheme.primaryLight,
                backgroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
