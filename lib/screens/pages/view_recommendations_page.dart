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
    'tech',
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
            SizedBox(
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
            ).marginOnly(left: 20),
            const SizedBox(height: 25),
            const SectionTitle(text: 'sport', showViewAll: false,),
            const SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
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

