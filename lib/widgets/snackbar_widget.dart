import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Snackbar or should i say toast/sonner")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final Snackbar = SnackBar(
              content: Text("this is a mafaka snackbar not a toast."),
              backgroundColor: Colors.amber,
              showCloseIcon: false,
              duration: Duration(seconds: 4),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              action: SnackBarAction(label: "Undo", onPressed: (){print("This will help in undo option");}, textColor: Colors.blue,),
            );
            ScaffoldMessenger.of(
              context,
            ).hideCurrentSnackBar(reason: SnackBarClosedReason.hide);
            ScaffoldMessenger.of(context).showSnackBar(Snackbar);
          },
          child: Text("Show Toast"),
        ),
      ),
    );
  }
}
