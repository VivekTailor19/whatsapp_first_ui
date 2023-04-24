

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
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
              content: Container(
                height: 225,width: 200,
                child: Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 200,width: 200,

                    alignment: Alignment.topLeft,
                    decoration: BoxDecoration(color: Colors.black12,image: DecorationImage(image: AssetImage("${wpproviderT!.chatlist[index].img}",) )),
                      child: Text("${wpproviderT!.chatlist[index].name}",textAlign: TextAlign.justify,),

                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [

                        IconButton(icon:Icon(Icons.chat),color: Colors.teal.shade400,onPressed: ()async {
                          Uri message = Uri(
                              scheme: 'sms',
                              path: '98945 12398',
                              queryParameters: {'body':' Testing : જો બકા તકલીફ તો રેહવાની જ '}
                          );
                          await launchUrl(message);
                        } ,),

                        IconButton(icon:Icon(Icons.call),color: Colors.teal.shade400,onPressed: () async {
                          String number = "tel: 98945 12398";
                          await launchUrl(Uri.parse(number));
                        },),

                        IconButton(icon:Icon(Icons.videocam_rounded),color: Colors.teal.shade400,onPressed: (){},),
                        IconButton(icon:Icon(Icons.info_outline_rounded),color: Colors.teal.shade400,onPressed: (){},),

                      ],),
                    )

                  ],
                ),
              ),
            );
          },);
        },
        child: CircleAvatar(
          radius: 22,
          backgroundImage: NetworkImage("${wpproviderT!.chatlist[index].img}"),
        ),
      ),
      title: Text("${wpproviderT!.chatlist[index].name}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
      subtitle: Text("${wpproviderT!.chatlist[index].message}",style: TextStyle(fontSize: 15,overflow: TextOverflow.ellipsis,),),
      trailing: Text("${wpproviderT!.chatlist[index].time}",style: TextStyle(color: Colors.black26,fontSize: 16),),
    );
  }

}
