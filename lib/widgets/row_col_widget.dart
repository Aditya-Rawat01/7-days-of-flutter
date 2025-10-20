import 'package:flutter/material.dart';

class RowColWidget extends StatelessWidget {
  const RowColWidget({super.key});

  @override

  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text("just to see the viewport size."),),
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Colors.green[200],
        ),
      ),
    );
  }
}