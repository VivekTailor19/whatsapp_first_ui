
import 'package:flutter/material.dart';


import '../model/call_model.dart';
import '../model/chat_model.dart';
import '../model/status_model.dart';

class WhatsAppProvider extends ChangeNotifier
{
  List<Chat_Model> chatlist = [
    Chat_Model(name: '10: FLUTTER BATCH',time: '11:55 am',message: '~ Bhavin Ambaliya😎: 🍕🍔🍟🌭🍿🧂🥓🍳',img:'https://cdn.dribbble.com/users/3941980/screenshots/15584126/flutter-3d-logo.png'),
    Chat_Model(name: 'Hello World',time: '00.00 pm', message: 'BhaskarIndia 💥💥💥💥💥',img: 'https://i.pinimg.com/236x/f4/03/07/f40307b2bc7d13cf675ff2992b61801d.jpg'),
    Chat_Model(name: 'Ankit',time: '12.25 pm',message: 'Today 5pm cricket',img: 'https://w0.peakpx.com/wallpaper/204/318/HD-wallpaper-hacker-ghost-hacker-joker-masked-man.jpg' ),
    Chat_Model(name: 'Amber Patel', time: '08.45 pm',message: 'Tommorrow 5 pm at Kamati Bag play Dandiya',img: 'https://cdn-icons-png.flaticon.com/512/1461/1461086.png'),
    Chat_Model(name: 'Rana Bapu', time: '12.00 pm',message: 'શુભ પ્રભાત મિત્ર 😎', img: 'https://cdn-icons-png.flaticon.com/512/2202/2202090.png'),
    Chat_Model(name: 'Randip Shigh', time:'10.00 pm', message: 'રાણો રાણા ની મોજ માં પછી બીજું કાંઇ ના ઘટે....',img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSN6vrUZeKVCZoP4XP1CIbyuNPJ_pcuRoC-A&usqp=CAU'),
    Chat_Model(name: '10: FLUTTER BATCH',time: '11:55 am',message: '~ Bhavin Ambaliya😎: 🍕🍔🍟🌭🍿🧂🥓🍳',img:'https://cdn.dribbble.com/users/3941980/screenshots/15584126/flutter-3d-logo.png'),
    Chat_Model(name: 'Hello World',time: '00.00 pm', message: 'BhaskarIndia 💥💥💥💥💥',img: 'https://i.pinimg.com/236x/f4/03/07/f40307b2bc7d13cf675ff2992b61801d.jpg'),
    Chat_Model(name: 'Ankit',time: '12.25 pm',message: 'Today 5pm cricket',img: 'https://w0.peakpx.com/wallpaper/204/318/HD-wallpaper-hacker-ghost-hacker-joker-masked-man.jpg' ),
    Chat_Model(name: 'Amber Patel', time: '08.45 pm',message: 'Tommorrow 5 pm at Kamati Bag play Dandiya',img: 'https://cdn-icons-png.flaticon.com/512/1461/1461086.png'),
    Chat_Model(name: 'Rana Bapu', time: '12.00 pm',message: 'શુભ પ્રભાત મિત્ર 😎', img: 'https://cdn-icons-png.flaticon.com/512/2202/2202090.png'),
    Chat_Model(name: 'Randip Shigh', time:'10.00 pm', message: 'રાણો રાણા ની મોજ માં પછી બીજું કાંઇ ના ઘટે....',img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSN6vrUZeKVCZoP4XP1CIbyuNPJ_pcuRoC-A&usqp=CAU'),
    Chat_Model(name: '10: FLUTTER BATCH',time: '11:55 am',message: '~ Bhavin Ambaliya😎: 🍕🍔🍟🌭🍿🧂🥓🍳',img:'https://cdn.dribbble.com/users/3941980/screenshots/15584126/flutter-3d-logo.png'),
    Chat_Model(name: 'Hello World',time: '00.00 pm', message: 'BhaskarIndia 💥💥💥💥💥',img: 'https://i.pinimg.com/236x/f4/03/07/f40307b2bc7d13cf675ff2992b61801d.jpg'),
    Chat_Model(name: 'Ankit',time: '12.25 pm',message: 'Today 5pm cricket',img: 'https://w0.peakpx.com/wallpaper/204/318/HD-wallpaper-hacker-ghost-hacker-joker-masked-man.jpg' ),
    Chat_Model(name: 'Amber Patel', time: '08.45 pm',message: 'Tommorrow 5 pm at Kamati Bag play Dandiya',img: 'https://cdn-icons-png.flaticon.com/512/1461/1461086.png'),
    Chat_Model(name: 'Rana Bapu', time: '12.00 pm',message: 'શુભ પ્રભાત મિત્ર 😎', img: 'https://cdn-icons-png.flaticon.com/512/2202/2202090.png'),
    Chat_Model(name: 'Randip Shigh', time:'10.00 pm', message: 'રાણો રાણા ની મોજ માં પછી બીજું કાંઇ ના ઘટે....',img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSN6vrUZeKVCZoP4XP1CIbyuNPJ_pcuRoC-A&usqp=CAU'),

  ];


  List<Status_Model> statuslist = [
    Status_Model(name: 'Hardik Hadiya',time: '30 minutes ago',img:'assets/images/profile.png'),
  ];

  Icon call = Icon(Icons.call,color: Colors.green);
  Icon video = Icon(Icons.videocam_rounded,color: Colors.green);
  Icon receive = Icon(Icons.call_received_rounded);
  Icon made = Icon(Icons.call_made_rounded,color: Colors.green);

  List<Call_Model> calllist = [
    Call_Model(name: 'Yash Pratap', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
    Call_Model(name: 'Rajvir Rathod', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: Icon(Icons.call_rounded,color: Colors.green),),
    Call_Model(name: 'Jay Rathod', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
    Call_Model(name: 'Jaya Rathod', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: Icon(Icons.call_rounded,color: Colors.green),),
    Call_Model(name: 'Vikram', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
    Call_Model(name: 'JP Edit', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: Icon(Icons.call_rounded,color: Colors.green),),
    Call_Model(name: 'Kavan', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
    Call_Model(name: 'Rajvir Rathod', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: Icon(Icons.call_rounded,color: Colors.green),),
    Call_Model(name: 'Yash Pratap', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
    Call_Model(name: 'Rajvir Rathod', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: Icon(Icons.call_rounded,color: Colors.green),),
    Call_Model(name: 'Yash Pratap', calltype: Icon(Icons.call_received_rounded,color: Colors.red,size: 15,), img: "assets/images/profile.png",time: '8 April, 5:30 pm', medium: Icon(Icons.videocam_rounded,color: Colors.green),),
    Call_Model(name: 'Rajvir Rathod', calltype: Icon(Icons.call_made_rounded,color: Colors.green,size: 15,), img: "assets/images/profile.png",time: '30 April, 5:30 am', medium: Icon(Icons.call_rounded,color: Colors.green),),

  ];
}