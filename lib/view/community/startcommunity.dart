import 'package:flutter/material.dart';

class Start_Communuities extends StatefulWidget {
  const Start_Communuities({Key? key}) : super(key: key);

  @override
  State<Start_Communuities> createState() => _Start_CommunuitiesState();
}

class _Start_CommunuitiesState extends State<Start_Communuities> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.close_rounded),
          iconSize: 25,
          color: Colors.black38,
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/community_service.JPG"),
          SizedBox(height: 50,
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Start a community",style: TextStyle(fontSize: 30,color: Color(0xff008069)),),
              ],
            ),
          ),
          ListTile(
              leading: Icon(Icons.insights_rounded,color: Colors.black38,),
              title: Text("Add and manage related groups from one place",style: TextStyle(fontSize: 18,color: Colors.black38),),
          ),
          ListTile(
              leading: Icon(Icons.campaign_rounded,color: Colors.black38,),
              title: Text("Reach up to 2,000 members with announcements",style: TextStyle(fontSize: 18,color: Colors.black38),),
          ),
          ListTile(
              leading: Icon(Icons.groups,color: Colors.black38,),
              title: Text("Organise your neighbourhood school,team and more",style: TextStyle(fontSize: 18,color: Colors.black38),),
          ),
          Spacer(),
          Container(
            height: 40,
            width: 300,

            decoration: BoxDecoration(
              color: Color(0xff008069),
              borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(20), right: Radius.circular(20)),
            ),

            alignment: Alignment.center,

            child: Text("Get started",style: TextStyle(fontSize: 19,color: Colors.white,
                wordSpacing: 2,letterSpacing: 1),),

          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
