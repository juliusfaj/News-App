import 'package:flutter/material.dart';
import 'package:newsapp/helpers/utils.dart';
import 'package:newsapp/widgets/app_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView(
        children:  [
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60,),
                  const Text('Sign up', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
                  const SizedBox(height: 5,),
                  Text('Fill the form below to create an account', style: TextStyle(
                    color: Colors.grey.withOpacity(.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),),
                  const SizedBox(height: 30,),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                        hintStyle: TextStyle(
                            fontSize: 13
                        ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(.5)),
                      )
                    ),
                  ),
                  const SizedBox(height: 30,),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: 'Enter your username',
                        hintStyle: TextStyle(
                          fontSize: 13
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(.5)),
                        )
                    ),
                  ),
                  const SizedBox(height: 30,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                            fontSize: 13
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(.5)),
                        )
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    color: Theme.of(context).colorScheme.primary.withOpacity(.7),
                    title: Text('Sign up',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimary
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Center(
                    child: Text('Swipe to sign in', style: TextStyle(
                      color: Colors.grey.withOpacity(.5),
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),),
                  ),
                  const SizedBox(height: 70,),


                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 60,),
                  const Text('Sign In', style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),),
                  const SizedBox(height: 5,),
                  Text('Fill the form below to sign in to your account', style: TextStyle(
                    color: Colors.grey.withOpacity(.5),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),),
                  const SizedBox(height: 30,),

                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                        hintStyle: const TextStyle(
                            fontSize: 13
                        ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(.5)),
                      )
                    ),
                  ),

                  const SizedBox(height: 30,),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle: TextStyle(
                            fontSize: 13
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary.withOpacity(.5)),
                        )
                    ),
                  ),
                  const Spacer(),
                  AppButton(
                    color: Theme.of(context).colorScheme.primary.withOpacity(.7),
                    title: Text('Sign In',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onPrimary
                      ),
                    ),
                  ),
                  const SizedBox(height: 98,)
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
