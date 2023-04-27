import 'package:flutter/material.dart';

class Community_Screen extends StatefulWidget {
  const Community_Screen({Key? key}) : super(key: key);

  @override
  State<Community_Screen> createState() => _Community_ScreenState();
}

class _Community_ScreenState extends State<Community_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset("assets/images/community.JPG"),
          Text("Introducing communities",style: TextStyle(fontSize: 27),),
          SizedBox(height: 5),
          Text(
            "Easily organise your related groups\nand send announcements. Now, your\ncommunities, like neighbourhoods or\nschools, can have their own space.",style: TextStyle(
            color: Colors.black38,fontSize: 19),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "startcommunity");
            },
            child: Container(

              height: 40,
              width: 300,

              decoration: BoxDecoration(
                color: Color(0xff008069),
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(20), right: Radius.circular(20)),
                ),

              alignment: Alignment.center,

              child: Text("Start your community",style: TextStyle(fontSize: 19,color: Colors.white,
                  wordSpacing: 1.5,letterSpacing: 1),),

            ),
          ),
        ],
      ),
    );
  }
}
