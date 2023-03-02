
import 'package:flutter/material.dart';

class Profile2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50.0,
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back,color: Colors.white,size: 30),
        actions: [Icon(Icons.menu,color: Colors.white,size: 30),
          SizedBox(width: 15)
        ],
      ),
      body: ListView(
        children: [
          Center(child: Container(
            child: CircleAvatar(radius: 75,
              backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/120544834?v=4'),
            ),
          ),
          ),
          Row(children: [SizedBox(width: 200,),
            Icon(Icons.facebook,color: Colors.blue),
            SizedBox(width: 15),
            Icon(Icons.face),
            SizedBox(width: 15),
            Icon(Icons.mail),
            SizedBox(width: 10),
            Icon(Icons. face_2_rounded),
          ],),
          SizedBox(height: 15),
          Center(child: Text('Abhinav cv')),
          Center(child: Text('abhinavcv02@gmail.com')),
          SizedBox(height: 10),
          Center(child: Text('Mobile App Developer')),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 224, 219, 219),
                borderRadius: BorderRadius.circular(30)),
                child: ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 224, 219, 219),
                borderRadius: BorderRadius.circular(30)),
                child: ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(decoration: BoxDecoration(color: Color.fromARGB(255, 224, 219, 219),
                borderRadius: BorderRadius.circular(30)),
                child: ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios))),
          ),
          ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
          ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
          ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
          ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
          ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
          ListTile(leading: Icon(Icons.privacy_tip),title: Text('Privacy'),trailing: Icon(Icons.arrow_forward_ios)),
        ],
      ),
    );
  }
}