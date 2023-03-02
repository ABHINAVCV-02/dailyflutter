import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Grid extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(

    body: CustomScrollView(
      slivers: [
        SliverAppBar(
          bottom: AppBar(backgroundColor: CupertinoColors.black, title: Container( color: CupertinoColors.white,child: TextField(decoration: InputDecoration(hintText: "serch here",prefixIcon: Icon (Icons.search_rounded)) ,)),

          ),

          backgroundColor: Colors.black,
          title: Text("Tripi go"),
          actions: [
            Row(
              children:
          [
            Text("kochi" ,style: TextStyle(fontSize: 20),),Icon(Icons.download)
          ]
            ),],

        ),
        SliverList(delegate: SliverChildListDelegate([
          Row(children:[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

            decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),

            color: Colors.black),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Helmets",style: TextStyle(color: Colors.white),),
            )


            ),
          ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),

                      color: Colors.black),
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("jackets",style: TextStyle(color: Colors.white),),
                  )


              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),

                      color: Colors.black),
                  child:Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("glows",style: TextStyle(color: Colors.white),),
                  )


              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(

                  decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),

                      color: Colors.black),
                  child:Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("gears",style: TextStyle(color: Colors.white),),
                  )


              ),
            ),

          ])
        ]))
      ],
    ),
  );
  }

}
