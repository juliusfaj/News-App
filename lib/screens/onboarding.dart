import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';
import '../widgets/app_button.dart';
import 'home.dart';


class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
        child:  Scaffold(
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/newsImg.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.scrim.withOpacity(0.9),
                ),
              ),


              Center(
                child: Column(

                  children: [
                    Expanded(
                        child: Center(
                          child: Text('FajNews',
                            style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                    ),

                    AppButton(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                         Brand(Brands.google, size: 25,),
                          const SizedBox(width: 5,),
                          Text('Sign up with Google',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                      color: Theme.of(context).colorScheme.onPrimary,
                      textColor: Theme.of(context).colorScheme.onSecondary,
                      onPressed: () {Get.to(const Home());},
                    ).paddingSymmetric(horizontal: 20),

                    const SizedBox(height: 20,),

                    AppButton(
                      title: Text('Log in to my account',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.primary
                        ),
                      ),
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      textColor: Theme.of(context).colorScheme.shadow,
                      onPressed: () {},
                    ).paddingSymmetric(horizontal: 20),

                    const SizedBox(height: 20,),

                    // By creating an account you accept terms of use and privacy policy
                    
                    RichText(
                        text: TextSpan(
                          text: 'By creating an account you accept our ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface,
                            fontSize: 9,
                          ),
                          children: const [
                            TextSpan(
                              text: ' terms of use ',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(text: ' and ',),
                            TextSpan(
                              text: ' privacy policy',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        )

                    ),

                    const SizedBox(height: 40,)
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
