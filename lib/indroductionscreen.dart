import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:project1/sliverbuider.dart';

class Indro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

return IntroductionScreen(
  globalBackgroundColor: Colors.black,
  pages: [
    PageViewModel(
      title: "first page",

      body: """Note: if you want to display IntroductionScreen only once, like on the first start of your app,
       use shared_preferences (or a similar strategy) to save the status of whether it has been already displayed or not. 
       It's not responsibility of this package to handle this."""
        ,
      image:    introImage(
        "https://media.istockphoto.com/id/1391644240/photo/young-handsome-father-teach-adorable-girl-daughter-to-do-school-homework-using-laptop.jpg?s=2048x2048&w=is&k=20&c=JZAflgORUPiADllUsLIL-OTxENCBDVwEbwCynAkIBZ8="
      )

    ),
    PageViewModel(
        title: "socond page",
        body: """Note: if you want to display IntroductionScreen only once, like on the first start of your app,
       use shared_preferences (or a similar strategy) to save the status of whether it has been already displayed or not.
       It's not responsibility of this package to handle this."""
        ,
        image:    introImage(
            "https://media.istockphoto.com/id/1391644240/photo/young-handsome-father-teach-adorable-girl-daughter-to-do-school-homework-using-laptop.jpg?s=2048x2048&w=is&k=20&c=JZAflgORUPiADllUsLIL-OTxENCBDVwEbwCynAkIBZ8="
                 )

    ),
    PageViewModel(
        title: "third page",
        body: """Note: if you want to display IntroductionScreen only once, like on the first start of your app,
       use shared_preferences (or a similar strategy) to save the status of whether it has been already displayed or not.
       It's not responsibility of this package to handle this."""
        ,
        image:    introImage(
            "https://media.istockphoto.com/id/1391644240/photo/young-handsome-father-teach-adorable-girl-daughter-to-do-school-homework-using-laptop.jpg?s=2048x2048&w=is&k=20&c=JZAflgORUPiADllUsLIL-OTxENCBDVwEbwCynAkIBZ8="
                )

    ),
    PageViewModel(
        title: "forth pagee",
        body: """Note: if you want to display IntroductionScreen only once, like on the first start of your app,
       use shared_preferences (or a similar strategy) to save the status of whether it has been already displayed or not.
       It's not responsibility of this package to handle this."""
        ,
        image:    introImage(
            "https://media.istockphoto.com/id/1391644240/photo/young-handsome-father-teach-adorable-girl-daughter-to-do-school-homework-using-laptop.jpg?s=2048x2048&w=is&k=20&c=JZAflgORUPiADllUsLIL-OTxENCBDVwEbwCynAkIBZ8="
                )

    )

  ],
  onDone:()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Grid())),
  onSkip:()=>Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Grid())),
  showBackButton: true,
  skip: Text("Skip"),
  next: Icon(Icons.arrow_forward),
  done: Text("continue"),
  back: Icon(Icons.arrow_back),




);
  }

   Widget introImage(String image) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Image.network(image,width: 250,)


    );
   }
}

