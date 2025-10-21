import 'package:flutter/material.dart';

class container_Widget extends StatelessWidget {
  const container_Widget({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("This is the app bar mothafucka")),
      body:  Center(
          child: Container(
            height: 200,
            width: 200,
            
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.lightBlue,
              
              boxShadow: [BoxShadow(
                blurRadius: 10,
                color: Colors.lightGreen
              )]
            ),
            child: Center(child: Text("Centered Text, lets see where this goes", style: TextStyle(fontSize: 15), textAlign: TextAlign.center,)) 
          ),
      ),
    );
  }
}