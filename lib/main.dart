


import 'package:flutter/material.dart';
import 'package:second_flutter_project/widgets/container_widget.dart';
import 'package:second_flutter_project/widgets/dismissible_widget.dart';
import 'package:second_flutter_project/widgets/listGrid_widget.dart';
import 'package:second_flutter_project/widgets/row_col_widget.dart';
import 'package:second_flutter_project/widgets/snackbar_widget.dart';
import 'package:second_flutter_project/widgets/textButton.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.deepOrange
      ),
      home: DismissibleWidget()
    );
  }
}