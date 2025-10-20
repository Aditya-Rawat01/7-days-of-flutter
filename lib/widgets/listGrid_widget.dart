import 'package:flutter/material.dart';

class ListgridWidget extends StatelessWidget {
  const ListgridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> fruits = [
      {"orange": "albert"},
      {"apple": "joseph"},
      {"kiwi": "shaqeela"},
      {"strawberry": "mathew"},
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView and GridView components"),
        backgroundColor: Colors.purple,
      ),
      body: GridView.builder(
        itemCount: fruits.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) => Card(
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(fruits[index].keys.single),Text(fruits[index].values.single)],) ),
        ),
      ),
      // ListView.builder(
      //   itemCount: fruits.length,
      //   itemBuilder: (context, index) => Card(
      //    child: ListTile(
      //     leading: Icon(Icons.work),
      //     title: Text(fruits[index].keys.first),
      //     subtitle: Text(fruits[index].values.single),
      //    ),
      //   ),
      // ),
    );
  }
}
