import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class Music extends StatelessWidget{
  var list1=[
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        "https://images.unsplash.com/photo-1514525253161-7a46d19cd819?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8bXVzaWMlMjAlMjBwb3N0ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
      "https://images.unsplash.com/photo-1462965326201-d02e4f455804?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",)),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1502602898657-3e91760cbb34?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8ZnJhbmNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=400&q=60')),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        "https://images.unsplash.com/photo-1501386761578-eac5c94b800a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aHVtYW5zfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        "https://images.unsplash.com/photo-1462965326201-d02e4f455804?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80")),
    DecorationImage(fit:BoxFit.fill,image: NetworkImage(
        'https://images.unsplash.com/photo-1491557345352-5929e343eb89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8ZXVyb3BlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=1400&q=60')),
  ];
  var list2=[
    "english","hindhi","malayalam","tamil","rap","dj"
    ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     appBar: AppBar(
       title: Center( child: Text("Playlist", style: TextStyle(color:Colors.pinkAccent.shade100),),),
       backgroundColor: Colors.black,
       bottom: AppBar(
           backgroundColor: Colors.black,
           title: Container(
             color: Colors.white,
             child: TextField(
               decoration: InputDecoration(
                 hintText: "Search your fav music...",
                 prefixIcon: Icon(Icons.search),
               ),
             ),
           )),
     ),
       body: GridView.builder(itemCount: 6,
       gridDelegate:
       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10),
       itemBuilder: (context, index) {
         return Stack(
             children: [

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),image:  list1[index]),
                 ),
               ),
               
               Positioned(left: 20,
                   top: 150,
                   child: Text(list2[index],style: TextStyle(color: Colors.white,fontSize: 20),))
             ]

         );
       })
,bottomNavigationBar:

   GNav(
       rippleColor: Colors.grey, // tab button ripple color when pressed
       hoverColor: Colors.grey, // tab button hover color
       haptic: true, // haptic feedback
       tabBorderRadius: 15,
       tabActiveBorder: Border.all(color: Colors.black, width: 1), // tab button border
       tabBorder: Border.all(color: Colors.grey, width: 1), // tab button border
       tabShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 8)], // tab button shadow
       curve: Curves.easeOutExpo, // tab animation curves
       duration: Duration(milliseconds: 900), // tab animation duration
       gap: 8, // the tab button gap between icon and text
       color: Colors.grey[800], // unselected icon color
       activeColor: Colors.red, // selected icon and text color
       iconSize: 24, // tab button icon size
       tabBackgroundColor: Colors.purple.withOpacity(0.1), // selected tab background color
       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
       tabs: [
         GButton(
           icon: Icons.home,
           text: 'Home',
         ),
         GButton(
           icon: Icons.favorite
           ,
           text: 'Likes',
         ),
         GButton(
           icon: Icons.search,
           text: 'Search',
         ),
         GButton(
           icon: Icons.playlist_add,
           text: 'playlist',
         )
       ]
   )
     ,
   );
  }
}



