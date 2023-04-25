import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  Widget build(BuildContext context) {
    
    Future.delayed(Duration(seconds: 3),() => Navigator.pushReplacementNamed(context, "first"),);
    
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/whatsapp.png",height: 80,width: 80,fit: BoxFit.fill,),
              //Text("What's App",style: TextStyle(fontSize: 30),),
            ],
          ),
        ),

      ),
    );
  }
}
