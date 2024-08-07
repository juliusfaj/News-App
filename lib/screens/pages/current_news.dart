import 'package:collapsible_app_bar/collapsible_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CurrentNews extends StatelessWidget {
  const CurrentNews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CollapsibleAppBar(
        backgroundColor: Colors.black,
        customLeading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          onPressed: (){Get.back();},
        ),
        expandedHeight: 600,
        body: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.scrim,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              const Text(
                'Title',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20,),
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
                  Text('John Doe', style: TextStyle(color:Colors.grey.withOpacity(.8), fontWeight: FontWeight.bold),),
                  const SizedBox(width: 10,),
                  Container(
                    height: 7,
                    width: 7,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary.withOpacity(.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 20,),
                  Text('Feb 27, 2023',
                    style: TextStyle(
                        color:Colors.grey.withOpacity(.8),
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
        header: Stack(
          children: [
            Container(
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/car_crash.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.scrim.withOpacity(.5),
                    Theme.of(context).colorScheme.scrim
                  ]
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}
