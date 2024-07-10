import 'package:flutter/material.dart';


import '../helpers/helpers.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

 var images = [
    (
     image: "assets/business_news.jpg",
     title: "Fear as dollar rises in stock market",
     newsDesc: "News description",
     time: "6 hours ago",
    ),
   (
   image:"assets/car_crash.jpg",
   title: "News title",
   newsDesc: "News description",
   time: "6 hours ago",
   ),
   (
   image:"assets/mountain.jpg",
   title: "News title",
   newsDesc: "News description",
   time: "6 hours ago",
   ),
   (
   image:"assets/newsImg.jpg",
   title: "News title",
   newsDesc: "News description",
   time: "6 hours ago",
   ),
 ];

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          PageSlider(images: images),
          const SizedBox(height: 30,),
          const SectionTitle(text: 'Recommendations',),
          const SizedBox(height: 20,)

          R
        ],
      )

    );
  }
}


