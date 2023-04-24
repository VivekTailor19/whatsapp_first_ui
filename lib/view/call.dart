import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/whatsapp_provider.dart';





class Calls_Screen extends StatefulWidget {
  const Calls_Screen({Key? key}) : super(key: key);

  @override
  State<Calls_Screen> createState() => _Calls_ScreenState();
}

class _Calls_ScreenState extends State<Calls_Screen> {

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
            child: ListView.builder(itemBuilder: (context, index) => Calltile(
              name: wpproviderT!.calllist[index].name,
              photo: wpproviderT!.calllist[index].img,
              time: wpproviderT!.calllist[index].time,
              calltype: wpproviderT!.calllist[index].calltype,
              medium: wpproviderT!.calllist[index].medium,
            ),
              itemCount: wpproviderT!.calllist.length,
              scrollDirection: Axis.vertical,
            ),
          )
        ],
      ),

    );
  }

  Widget Calltile({String? name, String? time, String? photo,Icon? calltype,Icon? medium}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundImage: AssetImage("$photo"),
      ),
      title: Text(
        "$name",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Row(mainAxisSize: MainAxisSize.min,
        children: [
          calltype!,
          Text(
            "$time",
            style: TextStyle(color: Colors.black26),
          ),
        ],
      ),
      trailing: medium!,
    );
  }

}
