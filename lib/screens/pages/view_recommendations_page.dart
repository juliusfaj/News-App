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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const PageTitle(title: 'Recommendation'),
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
          ),
        ]
      ).marginOnly(left: 20),
    );
  }
}

