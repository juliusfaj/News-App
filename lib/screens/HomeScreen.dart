import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           const SizedBox(height: 20,),

          Expanded(
            child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: PageController(viewportFraction: .86),
                  children: [
                  Stack(
                   children: [
                     Container(
                       height: 200,
                       width: 300,
                       decoration: const BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage('assets/newsImg.jpg'),
                           fit: BoxFit.cover,
                         ),
                       ),
                     ),

                     FilledButton(
                         onPressed: (){},
                       style: ElevatedButton.styleFrom(
                            backgroundColor: Theme.of(context).colorScheme.onPrimary,
                            foregroundColor: Theme.of(context).colorScheme.primary,
                         maximumSize: const Size(150, 50),
                         ),
                         child: const Text('Environment'),
                     ),
                   ],
                  ),

                  ],
                ),
          ),
        ],
      )

    );
  }
}
