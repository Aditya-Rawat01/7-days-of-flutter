import 'package:flutter/material.dart';

class formWidget extends StatefulWidget {
  const formWidget({super.key});

  @override
  State<formWidget> createState() => _formWidgetState();
}
 

class _formWidgetState extends State<formWidget> {
  var firstName = '';
  var lastName = '';
  var email = '';
  var password = "";
  final _formKey = GlobalKey<FormState>();

  void submitForm() {
  final isValid = _formKey.currentState!.validate();
  if (isValid) {
    _formKey.currentState!.save();
    // api calls to store the data to the db.
    print(firstName);
    print(lastName);
    print(email);
    print(password);

  }
  else {
    print("Error");
  }
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form"),),
      body: Center(
        child: Form(key: _formKey,
        child: Column(
          spacing: 15,
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "Enter first name."),
              key: ValueKey("firstName"),
              validator: (value){
                if (value.toString().isEmpty) {
                  return "First name cannot be empty";
                }else {
                  return null;
                }
              },
              onSaved: (val) {
                firstName = val.toString();
              }
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Enter last name."),
              key: ValueKey("lastName"),
              validator: (value){
                if (value.toString().isEmpty) {
                  return "Last name cannot be empty";
                }else {
                  return null;
                }
              },
              onSaved: (val) {
                lastName = val.toString();
              },
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Enter email."),
              key: ValueKey(""),
              validator: (value){
                if (value.toString().isEmpty) {
                  return "Email cannot be empty";
                }else {
                  return null;
                }
              },
              onSaved: (val) {
                email = val.toString();
              }
            ),
            TextFormField(
              decoration: InputDecoration(hintText: "Enter password."),
              key: ValueKey("password"),
              obscureText: true,
              validator: (value){
                if (value.toString().length<6) {
                  return "password cannot be smaller than 6 characters";
                }else {
                  return null;
                }
              },
              onSaved: (val) {
                password = val.toString();
              }
            ),
            TextButton(onPressed: submitForm, child: Text("Submit"))
          ],
        ),),
      ),
    );
  }
}