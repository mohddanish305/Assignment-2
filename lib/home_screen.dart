import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IntroCard'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Align(   // optional: center the card on screen
          alignment: Alignment.topCenter,
          child: Container(
            margin: EdgeInsets.all(10),
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.lightGreen.shade300,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26, // subtle shadow
                  blurRadius: 6,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // vertically center the Row
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, bottom: 20),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Colors.white,
                        backgroundImage:
                        AssetImage('assets/image/ErenYeager.jpg'),
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded( // prevents RenderFlex overflow and allows wrapping
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Eren Yeager",
                            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                          SizedBox(height: 4),
                          Text("Flutter Developer",
                            style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600,color: Colors.black87,),),
                          SizedBox(height: 6),
                          Text("Learning Flutter and loving the process!",
                            style: TextStyle(fontSize: 13, color: Colors.black87),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
