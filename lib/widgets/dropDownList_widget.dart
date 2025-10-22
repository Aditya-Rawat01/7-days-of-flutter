import 'package:flutter/material.dart';

class DropdownlistWidget extends StatefulWidget {
  const DropdownlistWidget({super.key});
 @override
 State<DropdownlistWidget> createState() => _dropDownState();
}
class _dropDownState extends State<DropdownlistWidget> {
  String selectedValue="a";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DropDown List Widget"),),
      body: Center(
        child: DropdownButton<String>(
          value: selectedValue,
          // hint: const Text("Select a value"),
          items: <String>["a","b","c","d"].map((String value){
            return DropdownMenuItem<String>(
              value:value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue!;
            });
          },
          ),
      ),
    );
  }
}