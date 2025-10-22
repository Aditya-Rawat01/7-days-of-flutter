import 'package:flutter/material.dart';

class stackWidget extends StatelessWidget {
  const stackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack"),),
      body: Container(
        child: Stack(
          
          children: [
            Positioned(
              right: 10,
              child: Container(height: 400,width: 400, color: Colors.yellow[600])),
              
            Container(height: 200,width: 200, color: Colors.red[600],),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(height: 50, width: 50, color: Colors.green,),
            )
          ],
        ),
      ),
    );
  }
}