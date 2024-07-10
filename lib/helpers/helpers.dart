import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PageSlider extends StatelessWidget {
  const PageSlider({
    super.key,
    required this.images,
  });

  final List<({String image, String newsDesc, String time, String title})> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                        Text(images[index].newsDesc, style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w500, color: Colors.white),),
                        const SizedBox(width: 5,),
                        const Icon(Icons.verified, color: Colors.lightBlueAccent,),
                        const SizedBox(width: 10,),
                        Text(images[index].time, style: const TextStyle(color: Colors.white),)
                      ],
                    ),
                    const SizedBox(height: 10,),
                    Text(images[index].title,style: const TextStyle(fontSize: 23, fontWeight: FontWeight.w600, color: Colors.white),),
                    const SizedBox(height: 15,),

                  ],
                ).marginSymmetric(horizontal: 30)
              ],
            ),
          );
        },
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    super.key,
    this.text = '',
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          const Text(
            'View all',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

