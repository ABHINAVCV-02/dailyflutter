import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Bott extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(child: GestureDetector(
       onDoubleTap: (){
         showSheet(context);
       },
       child: const Text("click me to show bottom sheet"),
     ),),
   );

  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text("share"),
                ),

                ListTile(
                  leading: Logo(Logos.google),
                  title: Text("google"),
                ),
                ListTile(
                  leading: Logo(Logos.whatsapp),
                  title: Text("Whatsapp"),
                )
              ],
            ),
          );
        });
  }}


