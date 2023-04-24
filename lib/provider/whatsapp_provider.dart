
import 'package:flutter/material.dart';


import '../model/call_model.dart';
import '../model/chat_model.dart';
import '../model/status_model.dart';

class WhatsAppProvider extends ChangeNotifier
{
  List<Chat_Model> chatlist = [
    Chat_Model(name: '10: FLUTTER BATCH',time: '11:55 am',message: '~ Bhavin Ambaliya😎: 🍕🍔🍟🌭🍿🧂🥓🍳',img:'https://cdn.dribbble.com/users/3941980/screenshots/15584126/flutter-3d-logo.png'),
  ];


  List<Status_Model> statuslist = [
    Status_Model(name: 'Hardik Hadiya',time: '30 minutes ago',img:'assets/images/profile.png'),
  ];

  Icon call = Icon(Icons.call,color: Colors.green);
  Icon video = Icon(Icons.videocam_rounded,color: Colors.green);
  Icon receive = Icon(Icons.call_received_rounded);
  Icon made = Icon(Icons.call_made_rounded,color: Colors.green);

  List<Call_Model> calllist = [
    Call_Model(name: 'Yash Pratap', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,),
      img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
    Call_Model(name: 'Rajvir Rathod', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: Icon(Icons.call_rounded,color: Colors.green),

    ),
  ];
}