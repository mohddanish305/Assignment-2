import 'package:introcard/home_screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(IntroCard());
}
class IntroCard extends StatelessWidget {
  const IntroCard({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
