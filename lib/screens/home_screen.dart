import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/screens/pages/current_news.dart';
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title:Text('FajNews',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_outlined),),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search),),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          SectionTitle(text: 'breaking news', onPressed: (){Get.to(const ViewRecommendationsPage());},),
          const SizedBox(height: 20,),
          PageSlider(images: images, onPressed: (){Get.to(const CurrentNews());},),
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


