import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whatsapp_first_ui/provider/whatsapp_provider.dart';
import 'package:whatsapp_first_ui/splashscreen/splash.dart';
import 'package:whatsapp_first_ui/view/firstscreen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => WhatsAppProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "first",
        routes: {
          "/":(context) => Splash_Screen(),
          "first":(context) => FirstScreen(),




        },
      ),
    ),
  );
}
