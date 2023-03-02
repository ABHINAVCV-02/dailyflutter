import 'package:flutter/material.dart';

class Hottel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
          Column(
            children: [
              Container(
                height: 400
                ,width: 400
                ,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://media.istockphoto.com/id/1454663143/photo/couple-of-tourists-with-suitcases-in-front-of-the-rental-accommodation.jpg?b=1&s=170667a&w=0&k=20&c=FbQIwEFNTfjtwUiQF4_VNUMyQ2DiAeldDotrm57qxS8="),fit: BoxFit.fill))
                ,
                child: Stack(
                  children: [
                    Positioned(left: 30,top: 250,child: Text("Crown Plaza \n Kochi,Kerala",style: TextStyle(fontSize: 20,color: Colors.white),),),
                    Positioned(
                      top: 370,left: 10,
                      child: Container(
                        height: 50,
                        width: 120,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2,color: Colors.white),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text("8.4/85 reviews",style: TextStyle(color: Colors.white,),
                          ),
                        ),


                      ),
                    ),
                  ],
   
                ),
                

              )
            ],
          )
             
          );
    
  }
}
