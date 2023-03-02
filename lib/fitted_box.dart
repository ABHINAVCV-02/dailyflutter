import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fitt extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  child: const Text(
                    "understand with fitted box"
                        ,style: TextStyle(fontSize:20
                  ,color: Colors.black),
                  ),

                ),
                Container(
                  height: 200,

                )
              ],
            ),
          )
        ],
      ),
    );
  }

}