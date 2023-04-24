import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_first_ui/provider/whatsapp_provider.dart';

class Chat_Screen extends StatefulWidget {
  const Chat_Screen({Key? key}) : super(key: key);

  @override
  State<Chat_Screen> createState() => _Chat_ScreenState();
}

class _Chat_ScreenState extends State<Chat_Screen> {

  WhatsAppProvider? wpproviderT;
  WhatsAppProvider? wpproviderF;

  @override
  Widget build(BuildContext context) {

    wpproviderT = Provider.of<WhatsAppProvider>(context,listen:true);
    wpproviderF = Provider.of<WhatsAppProvider>(context,listen:false);

    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.teal.shade500,
        child: Icon(Icons.chat),
      ),

      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.archive_outlined,color: Colors.teal,),
            title: Text("Archived"),
            trailing: Text("1",style:TextStyle(color: Colors.green)),
          ),

          Expanded(

            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Chattile(
                  name: wpproviderT!.chatlist[index].name,
                  photo: wpproviderT!.chatlist[index].img,
                  time: wpproviderT!.chatlist[index].time,
                  message: wpproviderT!.chatlist[index].message,
              ),
            itemCount: wpproviderT!.chatlist.length,
            ),
          ),
        ],

      ),

    );
  }

  Widget Chattile({String? name, String?message, String? time, String? photo})
  {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundImage: NetworkImage("$photo"),
      ),
      title: Text("$name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      subtitle: Text("$message",style: TextStyle(fontSize: 11),),
      trailing: Text("$time",style: TextStyle(color: Colors.black26),),
    );
  }

}
