import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/helpers/helpers.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle(
            showBtn: false,
            title: 'Discover',
            size: 40,
            showSubtext: true,
            subText: 'News from all around the world',
          ),
          TextField(

          )
        ],
      ).marginSymmetric(horizontal: 10),
    );
  }
}
