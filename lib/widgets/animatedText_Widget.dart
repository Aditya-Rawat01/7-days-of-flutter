import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class animatedTextWidget extends StatelessWidget {
  const animatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Animated Text"),),
      body: Center(
        child: Column(
          children: [
            // AnimatedTextKit(animatedTexts: [
            //   TypewriterAnimatedText("Aditya Rawat",speed: Duration(milliseconds: 100), textStyle: TextStyle(
            //     fontSize: 30,
            //     fontWeight: FontWeight.bold
            //   )),
            //   // add more when the text animation is cohesive and needed one after another.
            // ], totalRepeatCount: 2,
            // pause: Duration(milliseconds: 300),
            // // stopPauseOnTap: true,
            // // displayFullTextOnTap: true,
            // )
            // AnimatedTextKit(animatedTexts: 
            // [
            //   RotateAnimatedText("Hello", rotateOut: true,),
            //   RotateAnimatedText("World", rotateOut: true,)
            // ])
            AnimatedTextKit(animatedTexts: [
              WavyAnimatedText("Hello World",),
              WavyAnimatedText("Random Text"),
              
            ],repeatForever: true,)
          ],
        ),
      ),
    );
  }
}