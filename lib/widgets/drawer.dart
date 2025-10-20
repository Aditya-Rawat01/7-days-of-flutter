import 'package:flutter/material.dart';

class drawerWidget extends StatefulWidget {
  const drawerWidget({super.key});

  @override
  State<drawerWidget> createState() => _drawerWidgetState();
}

class _drawerWidgetState extends State<drawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                child: Container(
                  color: Colors.black,
                  child: Row(
                    spacing: 20,
                    children: [
                      CircleAvatar(radius:40, backgroundImage: NetworkImage("https://imgs.search.brave.com/oMnoj2ifjJsFmi1f_D07uo8VZMxMXnuJW004uA3IFvg/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9wbHVz/LnVuc3BsYXNoLmNv/bS9wcmVtaXVtX3Bo/b3RvLTE2Njk3MDQw/OTkyMTktOWJhNGU2/N2YxMzY5P2l4bGli/PXJiLTQuMS4wJml4/aWQ9TTN3eE1qQTNm/REI4TUh4elpXRnlZ/Mmg4TVh4OGNHVnlj/Mjl1SlRJd2JHOXZh/Mmx1WnlVeU1IVndm/R1Z1ZkRCOGZEQjhm/SHd3JmZtPWpwZyZx/PTYwJnc9MzAwMA"),),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("Sarah", style: TextStyle(fontSize: 30),),Text("sarahdoe@mail.com", style: TextStyle(fontSize: 15))],
                      ),
                    ]),
                ),
                
              ),
              ListTile(
                leading: Icon(Icons.folder),
                title: Text("My docs"),),
                ListTile(
                leading: Icon(Icons.account_balance_sharp),
                title: Text("My Account"),),
                ListTile(
                leading: Icon(Icons.account_balance_wallet_rounded),
                title: Text("My Balance"),),
                ListTile(
                leading: Icon(Icons.access_alarm_outlined),
                title: Text("My Meetings"),),
                ListTile(
                leading: Icon(Icons.person),
                title: Text("My profile"),),
                ListTile(
                leading: Icon(Icons.share),
                title: Text("Share"),),
                ListTile(
                leading: Icon(Icons.logout),
                title: Text("Logout"),),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer widget"),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Open the drawer!"),
          onPressed: () {},
        ),
      ),
    );
  }
}
