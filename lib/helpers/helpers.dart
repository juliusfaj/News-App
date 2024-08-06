import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/screens/pages/current_news.dart';

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
        controller: PageController(viewportFraction: .95, initialPage: 1),
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
    this.onPressed,
    this.showViewAll = true,
  });

  final String text;
  final Function()? onPressed;
  final bool showViewAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text.capitalizeFirst!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const Spacer(),
        InkWell(
          onTap: onPressed,
          child: Visibility(
            visible: showViewAll,
            child:  const Text(
              'View all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                fontSize: 12,
              ),
            ),
          ),
        )
      ],
    ).marginSymmetric(horizontal: 20);
  }
}

class NewsList extends StatelessWidget {
  const NewsList({
    super.key,
    this.category,
    this.date,
    this.name,
    this.title,
  });

  final String? category;
  final String? title;
  final String? name;
  final String? date;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){Get.to(const CurrentNews());},
      child: SizedBox(
        height: 140,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: double.infinity,
              width: 140,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary.withOpacity(.5),
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            const SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text( category ?? '',  style: TextStyle(color:Colors.grey.withOpacity(.8),fontWeight: FontWeight.bold),),
                const Spacer(),
                 Text(title ?? '',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,

                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary.withOpacity(.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(name ?? '', style: TextStyle(color:Colors.grey.withOpacity(.8), fontWeight: FontWeight.bold),),
                    const SizedBox(width: 10,),
                    Container(
                      height: 7,
                      width: 7,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary.withOpacity(.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Text(date ?? '',  style: TextStyle(color:Colors.grey.withOpacity(.8), fontWeight: FontWeight.bold),),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class PageTitle extends StatelessWidget {
  const PageTitle({
    super.key,
    this.title,
    this.showBtn = true,
    this.size = 25,
    this.showSubtext = false,
    this.subText,
  });

  final String? title;
  final bool showBtn;
  final double? size;
  final bool showSubtext;
  final String? subText;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 55,),
        Visibility(visible: showBtn,child: InkWell(onTap: (){Get.back();}, child:const Icon(Icons.arrow_back_ios_new))),
        const SizedBox(height: 15,),
        Text(
          title ?? '',
          style: TextStyle(
            color: Theme.of(context).colorScheme.primary,
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5,),
        Visibility(
          visible: showSubtext,
            child:Text(subText ?? '', style: TextStyle(color:Colors.grey.withOpacity(.8),fontWeight: FontWeight.bold),),
        ),
      ],
    );
  }
}

class ListSlider extends StatelessWidget {
  const ListSlider({
    super.key,
    required this.recommendations,
  });

  final List<String> recommendations;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: recommendations.length,
        itemBuilder: (context, index){
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              recommendations[index].capitalizeFirst!,
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.onPrimary,
                fontWeight: FontWeight.w500,
              ),
            ),
          ).marginOnly(right: 10);
        },
      ),
    );
  }
}


