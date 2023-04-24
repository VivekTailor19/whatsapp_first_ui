import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../model/chat_model.dart';
import '../model/status_model.dart';

class WhatsAppProvider extends ChangeNotifier
{
  List<Chat_Model> chatlist = [
    Chat_Model(name: '10: FLUTTER BATCH',time: '11:55 am',message: '~ Bhavin Ambaliya😎: 🍕🍔🍟🌭🍿🧂🥓🍳',img:'https://i.morioh.com/2020/02/28/1195ab76f0b1.jpg'),
  ];


  List<Status_Model> statuslist = [
    Status_Model(name: 'Hardik Hadiya',time: '30 minutes ago',img:'https://i.morioh.com/2020/02/28/1195ab76f0b1.jpg'),
  ];
}