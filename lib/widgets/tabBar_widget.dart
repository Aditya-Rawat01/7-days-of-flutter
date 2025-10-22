import 'package:flutter/material.dart';

class TabbarWidget extends StatelessWidget {
  const TabbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab bar widget"),
          bottom: TabBar(
            // isScrollable: true, // good when there are numerous tabbar options which is sort of unlikely.
            // indicatorColor: Colors.black,
            // indicatorWeight: 20,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search), text: 'Search'),
              Tab(
                icon: Icon(Icons.settings_applications),
                text: 'Applications',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Container(child: Text("This is home page"))),
            Center(child: Container(child: Text("This is search page"))),
            Center(child: Container(child: Text("This is application page"))),
          ],
        ),
      ),
    );
  }
}
