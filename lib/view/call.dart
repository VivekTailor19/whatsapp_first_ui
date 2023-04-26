import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/call_model.dart';
import '../provider/whatsapp_provider.dart';





class Calls_Screen extends StatefulWidget {
  const Calls_Screen({Key? key}) : super(key: key);

  @override
  State<Calls_Screen> createState() => _Calls_ScreenState();
}

class _Calls_ScreenState extends State<Calls_Screen> {

  @override
  void initState() {

    Icon call = Icon(Icons.call,color: Colors.green,size:15);               //medium
    Icon video = Icon(Icons.videocam_rounded,color: Colors.green,size:15);  //medium
    Icon receive = Icon(Icons.call_received_rounded,color: Colors.red,size:15);  //calltype
    Icon made = Icon(Icons.call_made_rounded,color: Colors.lightGreen,size:15); //calltype

    Provider.of<WhatsAppProvider>(context,listen:false).calllist = [

      Call_Model(name: 'Yash Pratap', calltype: receive, img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: video,),
      Call_Model(name: 'Rajvir Rathod', calltype: made, img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: call,),
      Call_Model(name: 'Jay Rathod', calltype: made, img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: video,),
      Call_Model(name: 'Jaya Rathod', calltype: made, img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: video,),
      Call_Model(name: 'Vikram', calltype:receive, img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: call,),
      Call_Model(name: 'JP Edit', calltype: made, img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: video,),
      Call_Model(name: 'Kavan', calltype: receive, img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: call,),
      Call_Model(name: 'Rajvir Rathod', calltype: made, img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: call,),
      Call_Model(name: 'Yash Pratap', calltype: receive, img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: video,),
      Call_Model(name: 'Rajvir Rathod', calltype: made, img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: call,),
      Call_Model(name: 'Yash Pratap', calltype: made, img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: video,),
      Call_Model(name: 'Rajvir Rathod', calltype: made, img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: video,),

    ];

    super.initState();
  }

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
       // backgroundColor: Colors.teal.shade500,
        child: Icon(Icons.add_ic_call_rounded),
      ),

      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: Transform.rotate(
              angle: pi/1.4,
              child: CircleAvatar(
                backgroundColor: Colors.teal.shade500,
                radius: 25,
                child: Icon(Icons.link_rounded,color: Colors.white,),
              ),
            ),
            title: Text("Create call link",style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Share a link for your WhatsApp call",style: TextStyle(color: Colors.black26),),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Row(
              children: [
                Text("Recent",style: TextStyle(color: Colors.black26),),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) => Calltile(wpproviderT!.calllist[index], index),
              itemCount: wpproviderT!.calllist.length,
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),

    );
  }

  Widget Calltile(Call_Model cm,int index) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage("${cm.img}"),
      ),
      title: Text(
        "${cm.name}",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Row(mainAxisSize: MainAxisSize.min,
        children: [
          cm.calltype!,
          Text(
            "${cm.time})",
            style: TextStyle(color: Colors.black26),
          ),
        ],
      ),
      trailing: cm.medium,
    );
  }

}
