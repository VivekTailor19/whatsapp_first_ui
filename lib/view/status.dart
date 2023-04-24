import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_first_ui/provider/whatsapp_provider.dart';

class Status_Screen extends StatefulWidget {
  const Status_Screen({Key? key}) : super(key: key);

  @override
  State<Status_Screen> createState() => _Status_ScreenState();
}

class _Status_ScreenState extends State<Status_Screen> {
  WhatsAppProvider? wpproviderT;
  WhatsAppProvider? wpproviderF;

  @override
  Widget build(BuildContext context) {
    wpproviderT = Provider.of<WhatsAppProvider>(context, listen: true);
    wpproviderF = Provider.of<WhatsAppProvider>(context, listen: false);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal.shade500,
        child: Icon(Icons.photo_camera),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              ListTile(
                leading: Stack(
                  alignment: Alignment(1.4,1.1),
                  children: [
                  CircleAvatar(backgroundImage: AssetImage('assets/images/profile.png'),radius: 30,),
                  Container(
                    alignment: Alignment.center,
                    height: 27,width: 27,
                    decoration: BoxDecoration(color: Colors.teal,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 3)
                    ),
                    child: Icon(Icons.add,color: Colors.white,size: 20,),
                  )

                ],),
                title: Text("My status",style: TextStyle(fontWeight: FontWeight.bold,),),
                subtitle: Text("Tap to add status update",style: TextStyle(color: Colors.black26),),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) => Statustile(
                    name: wpproviderT!.statuslist[index].name,
                    photo: wpproviderT!.statuslist[index].img,
                    time: wpproviderT!.statuslist[index].time,
                  ),
                  itemCount: wpproviderT!.statuslist.length,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Statustile({String? name, String? time, String? photo}) {
    return ListTile(
      leading: CircleAvatar(
        radius: 22,
        backgroundImage: NetworkImage("$photo"),
      ),
      title: Text(
        "$name",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text(
        "$time",
        style: TextStyle(color: Colors.black26),
      ),
    );
  }
}
