


import 'package:flutter/material.dart';
import 'package:second_flutter_project/widgets/alert_widget.dart';
import 'package:second_flutter_project/widgets/animatedText_Widget.dart';
import 'package:second_flutter_project/widgets/bottomNavigation_widget.dart';
import 'package:second_flutter_project/widgets/bottomSheet_widget.dart';
import 'package:second_flutter_project/widgets/container_widget.dart';
import 'package:second_flutter_project/widgets/dismissible_widget.dart';
import 'package:second_flutter_project/widgets/drawer.dart';
import 'package:second_flutter_project/widgets/dropDownList_widget.dart';
import 'package:second_flutter_project/widgets/image_Widget.dart';
import 'package:second_flutter_project/widgets/listGrid_widget.dart';
import 'package:second_flutter_project/widgets/row_col_widget.dart';
import 'package:second_flutter_project/widgets/snackbar_widget.dart';
import 'package:second_flutter_project/widgets/textButton.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple
      ),
      home: DropdownlistWidget()
    );
  }
}