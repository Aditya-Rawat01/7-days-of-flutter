import 'package:flutter/material.dart';

class TextButtonClass extends StatelessWidget {
  const TextButtonClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text("Testing out the buttons")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              
              style: ButtonStyle(backgroundColor: WidgetStateProperty.all(Colors.yellow), elevation: WidgetStateProperty.all(10), shadowColor:WidgetStateProperty.all(Colors.green)),
              child: Text("Press", style: TextStyle(color: Colors.black),),
              onPressed:() => print("hello world"),
            )
          ],
        ),
      ),
    );
  }
}