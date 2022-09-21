import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_clone/core/colors/colors.dart';

ValueNotifier<int> indexchangenotifier = ValueNotifier(0);

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: indexchangenotifier,
        builder: (context, int newIndex, _) {
          return BottomNavigationBar(
            currentIndex: newIndex,
            onTap: (index) {
              indexchangenotifier.value = index;
            },
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            selectedIconTheme: const IconThemeData(color: Colors.white),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.collections), label: 'New & Hot'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.download), label: 'Downloads')
            ],
          );
        });
  }
}
