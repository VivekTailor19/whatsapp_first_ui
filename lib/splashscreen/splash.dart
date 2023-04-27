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
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("",),
                Image.asset("assets/whatsapp.png",height: 80,width: 80,fit: BoxFit.fill,),
                Container(
                  child: Column(
                    children: [
                      Text("from",style: TextStyle(color: Colors.black38),),
                      Row
                    ],
                  ),
                )
                //Text("What's App",style: TextStyle(fontSize: 30),),
              ],
            ),
          ),
        ),

      ),
    );
  }
}
