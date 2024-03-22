import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Theme
            .of(context)
            .colorScheme
            .background,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
        child: const Scaffold(
          body: Center(
            child: Image(image: AssetImage('assets/newsImg.jpg'))
          )
        ),
    );
  }
}
