import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geolocator/geolocator.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({super.key});

  @override
  State<LocationWidget> createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
    Position? pos;
  @override
  Widget build(BuildContext context) {
    Future<void> getcurrentPos()async{
      bool serviceEnabled; // to know if the Gps//location service is on/enabled or not.
      LocationPermission permission; // to know when the service is not enabled then to handle the allow, deny , deny forever condition.

      serviceEnabled = await Geolocator.isLocationServiceEnabled();

      if (!serviceEnabled) {
        Fluttertoast.showToast(msg: "Service is not enabled");
      }
        permission = await Geolocator.checkPermission(); // to check the current status of the permission. this will be called when the button is clicked.
        print("first");
        print(permission);
        if (permission == LocationPermission.denied) {
          // when button is clicked and previously the permission was denied.
          permission = await Geolocator.requestPermission();
          print("second");
          print(permission);
          if (permission == LocationPermission.denied) {// when permission is still denied.
          print("third");
        print(permission);
            Fluttertoast.showToast(msg: "Permission is denied");
          }

          if (permission == LocationPermission.deniedForever) {
            Fluttertoast.showToast(msg: "permission is denied forever."); // originally denied, but now denied forever.
          }
        }

        if (permission == LocationPermission.deniedForever) {
            Fluttertoast.showToast(msg: "permission is denied forever."); // originally denied forever.
          }
      Position currentPos = await Geolocator.getCurrentPosition();
      print(currentPos);
      setState(() {
        pos = currentPos;
      });

    }
    return Scaffold(
      appBar: AppBar(title: Text("Location Package"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            pos==null?Text("Location"):Text(pos.toString()),
            ElevatedButton(onPressed: getcurrentPos, child: Text("Get Location"))
          ],
        ),
      ),
    );
  }
}