import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:newsapp/helpers/helpers.dart';
import '../../helpers/helpers.dart';


class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  final List<String> recommendations =const [
    'sport',
    'news',
    'politics',
    'entertainment',
    'business',
    'technology',
    'health',
    'science',
    'food',
    'travel'
  ];

  @override
  Widget build(BuildContext context) {
    return  AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageTitle(
              showBtn: false,
              title: 'Discover',
              size: 40,
              showSubtext: true,
              subText: 'News from all around the world',
            ).marginOnly(left: 20),
            const SizedBox(height: 30,),
            ListSlider(recommendations: recommendations).marginOnly(left: 20),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index){
                    return const Column(
                      children: [
                        NewsList(
                          category: 'Sports',
                          title: 'What training do \nvolleyball',
                          name: 'mike',
                          date: 'Feb 27, 2023',
                        ),
                        SizedBox(height: 10,)
                      ],
                    );
                  }
              ).marginSymmetric(horizontal: 20),
            ),
          ],
        ),
      ),
    );
  }
}
