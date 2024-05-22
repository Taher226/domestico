import 'package:domestico/my_theme.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'SplashScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor:MyTheme.primaryLight, // Violet color
      body: Center(
        child: Container(
          width: 200,
          height: 200,

          child: Center(
            child: Text(
              'Domestico',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Violet color
              ),
            ),
          ),
        ),
      ),
    );
  }
  }

