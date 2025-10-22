import 'package:flutter/material.dart';

class BottomsheetWidget extends StatelessWidget {
  const BottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BottomSheet Widget"),),
      body: Center(child: 
      ElevatedButton(onPressed: ()async{
        String? val = await _showBottomSheet(context);
        print(val);
      }, child: Text("Open Sheet")))
    );
  }
}

Future<String?> _showBottomSheet(BuildContext context) async {
  return showModalBottomSheet(context: context,
  // isDismissible: false, clicking outside of the sheet will not close the sheet.
  // enableDrag: false, dragging will no longer close the bottom sheet.
  backgroundColor: Colors.amberAccent,
  
   builder: (context) {
    
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.zero,
      height: height/3,
      width:double.infinity,
      child: Column(
      
      children: [
        
        Container(
          width: width,
          child: ElevatedButton(
            style:ButtonStyle(shape:WidgetStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4))))) ,
          child: Text("helo"),
          onPressed: (){Navigator.of(context).pop("helo");},
        ),
        )
        
      ],
    ),
    );
    
  }
  );
}