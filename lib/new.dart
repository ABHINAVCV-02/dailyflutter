import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Farmer extends StatelessWidget {
  var images = [
    NetworkImage(
        'https://media.istockphoto.com/id/1408768033/photo/fruits-and-vegetables-on-shop-stand-in-supermarket-grocery-store.jpg?s=1024x1024&w=is&k=20&c=WExYDG_OIsECAe8PNDjkwVWtYEJ-yWwVRNz6o2RasPw='),
    NetworkImage(
        'https://media.istockphoto.com/id/1459132288/photo/large-group-of-food-for-a-well-balanced-diet.jpg?b=1&s=170667a&w=0&k=20&c=1ujEFg9Q7moUUzxaX8Yx_2ikl8ggr-AAUiWLnTOaqnk='),
    NetworkImage(
        'https://media.istockphoto.com/id/1218693828/photo/wooden-bowl-with-mixed-nuts-on-rustic-table-top-view-healthy-food-and-snack.jpg?s=612x612&w=0&k=20&c=89-ko7nwlcqM6HPvwaQ3tZus4apArtwHkFAB0IxPQpo='),
  ];
  var Im = [
    NetworkImage(
        'https://images.unsplash.com/photo-1444952483853-7c36e902e722?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80'),
    NetworkImage(
        'https://media.istockphoto.com/id/1456749536/photo/strawberry-ananas-and-banana-cartoon-characteres-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=Z1o6z9XOOverNrSOVzPCTogDwmHvDPDJE76gu76Uwi4='),
    NetworkImage(
        'https://media.istockphoto.com/id/691210810/photo/tropical-fruits-assortment-with-mango-smoothie.jpg?b=1&s=170667a&w=0&k=20&c=RAYSvQ-V4eMAmQrwN268_zSYGqCb5SBD6l9ap-Hihtw='),
    NetworkImage(
        'https://media.istockphoto.com/id/623865742/photo/cutting-calories-out-of-his-diet.jpg?b=1&s=170667a&w=0&k=20&c=Qfp83jrkJJndB-Qg8atb5Z3uQfNteyx-6w24OCG_EHo='),
    NetworkImage(
        'https://media.istockphoto.com/id/1189775576/photo/greek-salad-with-feta-cheese.jpg?b=1&s=170667a&w=0&k=20&c=xoX552t8muIlX1BQN79QUKo91df5QdwNwCzsNPz8aOA='),
    NetworkImage(
        'https://images.unsplash.com/photo-1524638088-758d9961fc6f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGFja2VkJTIwZmF2bG91cnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),
  ];
  var a = [
    Text('Vegetables'),
    Text('Fruits'),
    Text('Exotic'),
    Text('Fresh Cuts'),
    Text('Nutrition Chargers'),
    Text('Packed Flavors'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          backgroundColor: Colors.green,
          title: Text('FARMERS FRESH ZONE'),
          actions: [
            Row(children: [
              Icon(Icons.location_on_outlined),
              Text('Kochi'),
              Icon(Icons.keyboard_arrow_down)
            ])
          ],
          bottom: AppBar(
              backgroundColor: Colors.green,
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for Vegetables,Fruits...",
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              )),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text('VEGETABLES',
                          style: TextStyle(color: Colors.green))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text('FRUITS',
                          style: TextStyle(color: Colors.green))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text('EXOTIC',
                          style: TextStyle(color: Colors.green))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(30)),
                      child: Text('FRESH CUTS',
                          style: TextStyle(color: Colors.green))),
                ),
              ],
            ),
            Column(children: [
              CarouselSlider(
                items: List.generate(3, (index) {
                  return Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: images[index], fit: BoxFit.cover)),
                  );
                }),
                options: CarouselOptions(
                  height: 200,
                  pauseAutoPlayInFiniteScroll: true,
                  autoPlay: true,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                  aspectRatio: 16 / 7,
                  initialPage: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.green)),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [Icon(Icons.timer), Text('30 MINS POLICY')],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [Icon(Icons.phone), Text('TRACEABILITY')],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Icon(Icons.person),
                            Text('LOCAL SOURCING')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
            Text(
              'Shop By Category',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ]),
        ),
        /////////////////////////////////////////////////////////////////////////////////////////////////

        SliverGrid(
            delegate:
            SliverChildBuilderDelegate(childCount: 6, (context, index) {
              return Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(height: MediaQuery.of(context).size.height/5,
                          width: MediaQuery.of(context).size.width*.3,
                          decoration: BoxDecoration(
                              image:
                              DecorationImage(image: Im[index], fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20))),
                      SizedBox(height: 5,),
                      Container(child: a[index],)                    ],
                  ),
                ],
              );
            }),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 20, crossAxisSpacing: 20))
      ]),

      ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
      bottomNavigationBar: NavigationBar(destinations: [
        Column(
          children: [Icon(Icons.home), Text('HOME')],
        ),
        Column(
          children: [Icon(Icons.shopping_cart), Text('CART')],
        ),
        Column(
          children: [Icon(Icons.person), Text('ACCOUNT')],
        )
      ]),
    );
  }
}