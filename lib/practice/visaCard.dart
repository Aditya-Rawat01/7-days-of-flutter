import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Visacard extends StatelessWidget {
  const Visacard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Visacard UI"),),
      body: Center(
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.green,
          
          
          ),
          height: 250,
          width: 400,
          child: Stack(
            children: [
              Positioned(
                right:-150,
                child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.6, red:100, blue: 100, green: 100),
                  shape: BoxShape.circle
                ),
                
              )),
              Positioned(
                left:-200,
                bottom:-480,
                child: Container(
                height: 600,
                width: 600,
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.6, red:100, blue: 100, green: 100),
                  shape: BoxShape.circle
                ),
              
              )),
              Positioned(
                top: 20,
                left: 20,
                child: Container(
                
                child: Text("Visa", style: TextStyle(fontSize: 30,color: Colors.blue[900],fontWeight: FontWeight.bold),),
              )),
              Positioned(
                top: 60,
                left: 25,
                child: Container(
                
                child: Text("It's where you want to be", style: TextStyle(fontSize: 10,color: Colors.blue[900],fontWeight: FontWeight.bold),),
              )),
              Positioned(
                bottom: 20,
                left: 20,
                child: Container(
                
                child: Text("Aditya Rawat", style: GoogleFonts.sourceCodePro(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.grey.shade800
                )),
              )),
              Positioned(
                bottom: 40,
                left: 20,
                child: Container(
                
                child: Text("7888 9875 7878 8426", style: GoogleFonts.sourceCodePro(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey.shade800
                )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}