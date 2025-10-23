import 'package:flutter/material.dart';

class Complexui extends StatelessWidget {
  const Complexui({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                Stack(
                  children: [Container(
                    height: 500,
                    child: Stack(
                      children: [
                        Positioned(child: Container(
                          height: 450,
                          decoration: BoxDecoration(
                            
                            image: DecorationImage(image: NetworkImage("https://imgs.search.brave.com/4qj7Yh7jf67PdfmtNgsiH5N7NS6A59wlHyDz3DqrtF4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAyLzk5LzkyLzM0/LzM2MF9GXzI5OTky/MzQzMl9zQlhEUExJ/dnVBaktCVll0Z21Y/TFpRcTAxRzZud1c1/ZS5qcGc",),fit: BoxFit.cover)
                            )
                            )),

                        Positioned(
                          bottom:0,
                          right: 25,
                          child: CircleAvatar(
                          
                          backgroundImage: NetworkImage("https://imgs.search.brave.com/jd1Vu0uAzdC_hd12driyWDZupnt23ktkzQbaPeTmpi0/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQ1/MDI2ODU1OC9waG90/by9zdW1tZXItc2Vs/ZmllLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1JaXZHUUlY/VjdwQ3VfdHIxMEkw/a2FEb3VVdElpX3BL/ek9ycUJfTkFHb0NB/PQ"),
                          radius: 50,
                          backgroundColor: Colors.red,
                        )),
                      ],

                    ),
                  )],
                ),

                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Madrid City Tour for Designers", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                      Text("city madrid, madrid, city", style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15, color: Colors.grey),),
                      Container(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            spacing: 2,
                            children: [
                              Text("200"),
                              Icon(Icons.favorite)]),
                          Row(
                            spacing: 2,
                            children: [
                              Text("200"),
                              Icon(Icons.upload)]),
                          Row(
                            spacing: 2,
                            children: [
                              Text("200"),
                              Icon(Icons.comment)]),
                          Row(
                            spacing: 2,
                            children: [
                              Text("200"),
                              Icon(Icons.emoji_emotions)]),
                        ],
                      ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Text("Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi"),
                      )
                    
                    ],
                  
                  ),
                )
              
            
          ],
        ),
      ),
    );
  }
}

// my tried crude approach:

// Container(
            //   // clipBehavior: Clip.hardEdge,
            //   // decoration: BoxDecoration(
            //   //   borderRadius: BorderRadius.all(Radius.circular(20)),

            //   //   color: Colors.green
            //   // ), 
            //   height: 200,
            //   child: Stack(

            //     fit: StackFit.expand,
            //     children: [
                  
            //       Positioned(
            //         child: Image.network("https://imgs.search.brave.com/KwH88rNZsdV8u6Q9Fe4cMRjON5BlJivzgzgUDJDC_Z4/rs:fit:0:180:1:0/g:ce/aHR0cHM6Ly93d3cu/c2VhdDYxLmNvbS9p/bWFnZXMvbWFkcmlk/LWF0b2NoYS1leHRl/cmlvci5qcGc", fit: BoxFit.fitWidth,),
                   
            //       ),
            //       Positioned(
            //         bottom: -20,
            //         right: 20,
            //         child: Image.network("https://imgs.search.brave.com/JIZ1UG3nLySZXXwRcHFuK8aBkiqMkGdz7NewDB1RLTI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTQ1/MDI2ODU1OC9waG90/by9zdW1tZXItc2Vs/ZmllLmpwZz9zPTYx/Mng2MTImdz0wJms9/MjAmYz1JaXZHUUlY/VjdwQ3VfdHIxMEkw/a2FEb3VVdElpX3BL/ek9ycUJfTkFHb0NB/PQ",height: 60, width: 60,),
                  
            //       )
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),

            // Padding(
            //   padding: EdgeInsetsGeometry.fromLTRB(20,0,20,0),
            //   child: Text(
            //     "Madrid city tour for designers",
            //     style: TextStyle(fontSize: 30),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsetsGeometry.fromLTRB(20,0,20,0),
            //   child: Text(
            //     "city madrid, madrid city",
            //     style: TextStyle(fontSize: 20),
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsetsGeometry.fromLTRB(20,10,20,10),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //     children: [
            //       Row(children: [Text("20"), Icon(Icons.favorite)]),
            //       Row(children: [Text("34"), Icon(Icons.share)]),
            //       Row(children: [Text("92"), Icon(Icons.comment)]),
            //       Row(children: [Text("295"), Icon(Icons.emoji_emotions)]),
            //     ],
            //   ),
            // ),
            // Padding(
            //   padding: EdgeInsetsGeometry.fromLTRB(20,0,20,0),
            //   child: Text(
            //     "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi",
            //   ),
            // ),