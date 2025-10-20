import 'package:flutter/material.dart';

class DismissibleWidget extends StatefulWidget {
  const DismissibleWidget({super.key});
  @override
  State<DismissibleWidget> createState() => _listState();
}
class _listState extends State<DismissibleWidget> {
    List<String> todo = ["First todo", "Second Todo", "Third todo", "Banana"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dissmissible Content"),
      ),
        body: ListView.builder(
          itemCount: todo.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key: UniqueKey(),
            onDismissed: (direction) {
              setState(() {
                todo.removeAt(index);
              });
              if (direction==DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Good", style: TextStyle(color: Colors.white),), backgroundColor: Colors.green));
              } else {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Bad", style: TextStyle(color: Colors.black)), backgroundColor: Colors.red));
              }
            },
              background: Container(
                color: Colors.green,
              ),
              secondaryBackground: Container(
                color: Colors.red
              ),
            child: Card(
              child: ListTile(
                title: Text(todo[index]))),
          );
          } ,
        )
    );
  }
}