import 'package:flutter/material.dart';
import 'package:sample/screens/home/screen_home.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScreenHome.selectedIndexNotifier,
      builder: (BuildContext ctx,int updatedIndex,Widget? _){
       return BottomNavigationBar(
        currentIndex: updatedIndex,
        onTap:(newIndex){
          ScreenHome.selectedIndexNotifier.value=newIndex;
        },
        items: [
        BottomNavigationBarItem(icon:Icon(Icons.home),label:'TRANSACTION'),
        BottomNavigationBarItem(icon:Icon(Icons.category),label:'CATEGORY'),
      ]
      );

      },
    );
  }
}