import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/screens/pages/view_recommendations_page.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          const SectionTitle(text: 'breaking news',),
          const SizedBox(height: 20,),
          PageSlider(images: images),
          const SizedBox(height: 30,),
          SectionTitle(text: 'recommendations', onPressed: (){
            Get.to(const ViewRecommendationsPage());
          }),
          const SizedBox(height: 15,),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Column(
                  children: [
                    NewsList(
                      category: 'Sports',
                      title: 'What training do \nvolleyball',
                      name: 'mike',
                      date: 'Feb 27, 2023',
                    ),
                    SizedBox(
                      height: 10  ,
                    )
                  ],
                ).marginOnly(left: 20);
              },
            ),
          )
        ],
      ),
    );
  }
}


