import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icons_plus/icons_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value:const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title:Text('FajNews',
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_none_outlined),),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search),),
          ],
        ),
        body: Stack(
          children: [
            if(_currentIndex == 0)...[
              Center(
                child: Text((_currentIndex + 1).toString()),
              ),
            ],
            if(_currentIndex == 1)...[
              Center(
                child: Text((_currentIndex + 1).toString()),
              ),
            ],
            if(_currentIndex == 2)...[
              Center(
                child: Text((_currentIndex + 1).toString()),
              ),
            ],
            if(_currentIndex == 3)...[
              Center(
                child: Text((_currentIndex + 1).toString()),
              ),
            ],
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          selectedItemColor: context.colorScheme.primary,
          unselectedItemColor: context.colorScheme.outline.withOpacity(.7),
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Iconsax.home_1_outline),
              activeIcon:Icon(Iconsax.home_bold),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore_outlined),
              activeIcon: Icon(Icons.explore),
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              activeIcon: Icon(Icons.bookmark),
              label: 'Saved',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesome.user),
              activeIcon: Icon(FontAwesome.user_solid),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get colorScheme => theme.colorScheme;
}
