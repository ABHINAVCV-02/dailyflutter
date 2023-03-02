import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
class Clipey extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Column(
      children: [

        ClipOval(
          child:  Image.network("https://images.unsplash.com/photo-1486649567693-aaa9b2e59385?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8aHVtYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60" ),

        ),
    ClipPath(
    clipper: MultipleRoundedCurveClipper(),
    child: Container(
    height: 100,
    color: Colors.black,
    child: Center(child: Text("MultipleRoundedCurveClipper()",style: TextStyle(color: Colors.white),)),
    ),
    )]
    ),



    );


    
      

    
  }
  
}