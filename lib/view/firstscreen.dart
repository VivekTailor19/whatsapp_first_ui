import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_first_ui/view/call.dart';
import 'package:whatsapp_first_ui/view/chat.dart';
import 'package:whatsapp_first_ui/view/community.dart';
import 'package:whatsapp_first_ui/view/status.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xff075E55),
            title: Text("WhatsApp"),
            actions: [
              Icon(Icons.camera_alt_outlined),
              SizedBox(width: 10,),

              Icon(Icons.search),
              SizedBox(width: 5,),

              Icon(Icons.more_vert_rounded),
              SizedBox(width: 10,),

            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.groups),),
                Tab(text: "Chats",),
                Tab(text: "Status",),
                Tab(text: "Calls",),
              ],
            ),

          ),
          body: TabBarView(
            children: [
              Community_Screen(),
              Chat_Screen(),
              Status_Screen(),
              Calls_Screen()
            ],
          ),

        ),
      ),
    );
  }

}
