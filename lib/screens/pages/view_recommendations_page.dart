import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/helpers.dart';


class ViewRecommendationsPage extends StatelessWidget {
  const ViewRecommendationsPage({super.key});

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
    return Scaffold(
      body: SafeArea(
        top: false,
        maintainBottomViewPadding: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageTitle(title: 'Recommendation').marginSymmetric(horizontal: 20),
            const SizedBox(height: 20),
            ListSlider(recommendations: recommendations).marginOnly(left: 20),
            const SizedBox(height: 25),
            const SectionTitle(text: 'sport', showViewAll: false,),
            const SizedBox(height: 10,),
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
          ]
        ),
      ),
    );
  }
}

