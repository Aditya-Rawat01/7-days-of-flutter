import 'package:flutter/material.dart';
import 'package:second_flutter_project/widgets/alert_widget.dart';
import 'package:second_flutter_project/widgets/animatedText_Widget.dart';
import 'package:second_flutter_project/widgets/dismissible_widget.dart';
import 'package:second_flutter_project/widgets/row_col_widget.dart';

class BottomnavigationWidget extends StatefulWidget {
  const BottomnavigationWidget({super.key});
  @override
  State<BottomnavigationWidget> createState() => _navState();
}

class _navState extends State<BottomnavigationWidget> {
  int index = 0;
  // List<Widget> wid =[
  //   Text('Home'),
  //   Text('Search'),
  //   Text('Work'),
  //   Text('Profile')
  // ];
  PageController pageController = PageController();
  void onTap(int choice) {
    setState(() {
      index = choice;
    });
      pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation Widget"),),
      // body: Center(
      //   child: wid.elementAt(index),
      // ),
      body: PageView(
        controller: pageController,
        children: [
          // this will contain the pages.
          AlertWidget(),
          RowColWidget(),
          animatedTextWidget(),
          DismissibleWidget()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: 
      [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Search'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.work),
          label: 'work'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Me'
        ),
      ], currentIndex: index,
      backgroundColor: Colors.white,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: onTap,),
    );
  }
}