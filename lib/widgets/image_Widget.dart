import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image widget"),),
      body: Center(
        child: Container(
          height: 250,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.green,
            boxShadow: [
              BoxShadow(color: Colors.black, blurRadius: 20)
            ],
            // image: DecorationImage(image: AssetImage("assets/dream.rendered.png"), fit:BoxFit.cover),
            // image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0HhtRQTeRII0V_qrkzPUOBGO6VTps3TsIGw&s"), fit:BoxFit.cover),

            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: CachedNetworkImage(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0HhtRQTeRII0V_qrkzPUOBGO6VTps3TsIGw&s", placeholder: (context, url) => Center(child:CircularProgressIndicator()),errorWidget: (context, url, error) => Icon(Icons.error),)
        ),
      //   child: Container(
      //     height: 250,
      //     width: 300,
      //     color: Colors.green,
      //   child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0HhtRQTeRII0V_qrkzPUOBGO6VTps3TsIGw&s",
      //   fit: BoxFit.cover,),
      // ),
      )
    );
  }
}