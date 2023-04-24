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
              itemBuilder: (context, index) => Chattile(index),
            itemCount: wpproviderT!.chatlist.length,
            ),
          ),
        ],

      ),

    );
  }

  Widget Chattile(int index)
  {
    return ListTile(

      leading: InkWell(
        onTap: () {
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              content: Column(mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network("${wpproviderT!.chatlist[index].img}"),
                  Container(alignment: Alignment.center,
                    height: 25,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: [

                      Icon(Icons.chat,color: Colors.teal.shade400,),
                      Icon(Icons.call,color: Colors.teal.shade400,),
                      Icon(Icons.videocam_rounded,color: Colors.teal.shade400,),
                      Icon(Icons.info_outline,color: Colors.teal.shade400,),
                    ],),
                  )

                ],
              ),
            );
          },);
        },
        child: CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage("${wpproviderT!.chatlist[index].img}"),
        ),
      ),
      title: Text("${wpproviderT!.chatlist[index].name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
      subtitle: Text("${wpproviderT!.chatlist[index].message}",style: TextStyle(fontSize: 11),),
      trailing: Text("${wpproviderT!.chatlist[index].time}",style: TextStyle(color: Colors.black26),),
    );
  }

}
