import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  var tileData = [
    (
    title: "Privacy",
    icon: Icons.shield_moon_outlined,
    ),(
    title: "Purchase History",
    icon: Icons.history,
    ),(
    title: "Help & Support",
    icon: Icons.help_outline,
    ),(
    title: "Settings",
    icon: Icons.settings,
    ),(
    title: "Invite a Friend",
    icon: Icons.people_alt_outlined,
    ),(
    title: "Logout",
    icon: Icons.logout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 100,),
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary.withOpacity(.8),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: const Icon(Icons.edit, color: Colors.black,),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text('John Doe', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 15),
                  Container(
                    width: 150,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Upgrade to PRO',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: ListView.builder(
                  itemCount: tileData.length,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: Icon(tileData[index].icon),
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                      title: Text(tileData[index].title),
                      onTap: (){},
                      trailing: const Icon(Icons.arrow_forward_ios),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
