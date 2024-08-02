import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../helpers/helpers.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const PageTitle(
              showBtn: false,
              title: 'Saved News',
              size: 30,
              showSubtext: false,
            ).marginOnly(left: 20),
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
