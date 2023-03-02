import 'dart:js';

import 'package:flutter/material.dart';

class Back extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text('Confirm exit???'),
          content: Text('Do you really want to exit'),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text('yes')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);

            }, child: Text('no')),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);

            }, child: Text('cancel')),
          ],
        );
      });
    }
    return WillPopScope(onWillPop: showAlert,
        child: Scaffold(
          body:  Text('press back button'),
        ));
  }



}