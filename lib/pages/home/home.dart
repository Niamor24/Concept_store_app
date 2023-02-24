import 'package:flutter/material.dart';
import 'package:flutter_application_training/pages/home/widgets/category.dart';
import 'package:flutter_application_training/pages/home/widgets/header.dart';
import 'package:flutter_application_training/pages/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(180, 100),
                child: Image.asset(
                  'assets/images/bg_liquid.png',
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                HeaderSection(),
                SearchSection(),
                CategorySection(),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }
}

Widget NavigationBar() {
  return Container(
    height: 105,
    decoration: BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 5,
          blurRadius: 10,
        ),
      ],
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: BottomNavigationBar(
        selectedItemColor: const Color(0XFF5F67EA),
        selectedFontSize: 12,
        unselectedFontSize: 12,
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home_rounded,
              size: 50,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Games',
            icon: Icon(
              Icons.gamepad_rounded,
              size: 50,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Movies',
            icon: Icon(
              Icons.play_arrow_rounded,
              size: 50,
            ),
          ),
          BottomNavigationBarItem(
            label: 'Books',
            icon: Icon(
              Icons.auto_stories_rounded,
              size: 50,
            ),
          ),
        ],
      ),
    ),
  );
}
/*Widget NavigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    items: const [
      BottomNavigationBarItem(
        label: 'Home',
        icon: Icon(Icons.home_rounded),
      ),
      BottomNavigationBarItem(
        label: 'App',
        icon: Icon(Icons.gamepad_rounded),
      ),
      BottomNavigationBarItem(
        label: 'Film',
        icon: Icon(Icons.play_arrow_rounded),
      ),
      BottomNavigationBarItem(
        label: 'Book',
        icon: Icon(Icons.auto_stories_rounded),
      ),
    ],
  );
}*/
