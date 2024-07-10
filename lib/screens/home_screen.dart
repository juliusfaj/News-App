import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class HomeScreen extends StatelessWidget {
    HomeScreen({super.key});

 var images = [
    (
     image: "assets/business_news.jpg",
     title: "News title",
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

          SizedBox(
            height: 250,
            child: PageView.builder(
              itemCount: images.length,
              scrollDirection: Axis.horizontal,
              controller: PageController(viewportFraction: .95),
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal:5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage(images[index].image),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.black.withOpacity(.4)
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 15,),
                          ElevatedButton(onPressed: () {}, child: const Text('Sports',),),
                          const Spacer(),
                          Row(
                            children: [
                              Text(images[index].newsDesc, style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),
                              const SizedBox(width: 5,),
                              Icon(Icons.verified, color: Colors.lightBlueAccent,),
                              const SizedBox(width: 10,),
                              Text(images[index].time)
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Text(images[index].title),
                        ],
                      ).marginSymmetric(horizontal: 30)
                    ],
                  ),
                );
              },
                ),
          ),
        ],
      )

    );
  }
}
