import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../helpers/helpers.dart';


class ViewRecommendationsPage extends StatelessWidget {
  const ViewRecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          PageTitle(title: 'Recommendation'),
          const SizedBox(height: 20),
        ]
      ),
    );
  }
}

