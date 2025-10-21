import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  const AlertWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Alert widget"),),
      body: Center(
        child: ElevatedButton(onPressed: ()async{
          // the _showDialog function can return true, false and null (when the person clicks outside the dialog and closes it.)
          bool val =await _showDialog(context) ?? false;
          if (val) {
            print("The person said yes");
          }
          else {
            print("The person said no");
          }
          } , child: Text("Show Alert")),
      ),
    );
  }
}


Future<bool?> _showDialog(BuildContext context) async {
  return showDialog(context: context, builder: (BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      title: Text("This action is permanent and cannot be undone. Are you sure?"),
      content: SingleChildScrollView( // this is scroll container
        child: ListBody(
          children: [
            Text("Where this will be shown?")
          ],
        ),
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(context).pop(true);
        }, child: Text("yes")),
        TextButton(onPressed: (){
          Navigator.of(context).pop(false);
        }, child: Text("no"))
      ],
    );
  });
}