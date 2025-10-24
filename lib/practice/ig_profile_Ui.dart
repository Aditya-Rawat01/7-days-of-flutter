import 'package:flutter/material.dart';

class IgWidgetUI extends StatelessWidget {
  const IgWidgetUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          spacing: 20,
          children: [
            Icon(Icons.chevron_left, color: Colors.black),
            Text(
              "wanda.s",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
        elevation: 3,
        shadowColor: Colors.black,
        backgroundColor: Colors.white,
      ),

      body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
              height: 140,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      CircleAvatar(
                        radius: 45,
                        backgroundImage: NetworkImage(
                          "data:image/jpeg;base64,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",
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Wanda S."),
                          Text(
                            "Photographer/New York",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 80),
                  Container(
                    width:
                        MediaQuery.of(context).size.width - 250, // goofy shit
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "150",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "posts",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "5k",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "followers",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 20),
                                  Text(
                                    "100",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Following",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 0,
                                child: Container(
                                  width: 240,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Follow",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: ButtonStyle(
                                      backgroundColor: WidgetStateProperty.all(
                                        Colors.blue,
                                      ),

                                      shape: WidgetStateProperty.all(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 17),

                              Container(
                                height: 50,
                                width: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,

                                  border: Border.all(
                                    color: Colors.blue,
                                    width: 2,
                                  ),
                                ),

                                child: Icon(
                                  Icons.arrow_downward_sharp,
                                  color: Colors.blue,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(
              height: 530,
              width: MediaQuery.of(context).size.width,
              color: Colors.amber,
              child: Column(
                children: [
                  // memories
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Row(
                      spacing: 10,

                      children: [1, 2, 3, 4, 5, 6, 7, 8, 9].map((index) {
                        return Column(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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",
                              ),
                              radius: 30,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("Feed")
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                  
                  // and posts
                  Expanded(
                    
                    child: GridView.builder(
                      
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4,mainAxisSpacing:6, crossAxisSpacing: 6 ),padding: EdgeInsets.all(6), itemBuilder: (context, index) => Container(
                        color: Colors.blue,
                        height: 50,
                      ),),
                  )
                  ],
              ),
            ),
          ],
        ),
      
    );
  }
}
