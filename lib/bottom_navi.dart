import 'package:flutter/material.dart';

ValueNotifier<int> indexChangenotifier =ValueNotifier(0);

class bottom_navi extends StatelessWidget {
  const bottom_navi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ValueListenableBuilder(valueListenable: indexChangenotifier, builder: (context,int newindex, _) {
     return BottomNavigationBar(
       currentIndex: newindex,
       onTap: (index) {
        indexChangenotifier.value= index;
       },
       elevation: 0,
       type: BottomNavigationBarType.fixed,
       backgroundColor: Colors.black,
       selectedIconTheme:const IconThemeData(color: Colors.white),
       unselectedIconTheme:const IconThemeData(color: Colors.grey),
       selectedItemColor: Colors.white,
       unselectedItemColor: Colors.grey,
       items: const [
         BottomNavigationBarItem(
             icon: Icon(
               Icons.home_filled,
             ),
             label: 'Home'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.video_library_rounded,
             ),
             label: 'New & Hot'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.emoji_emotions_rounded,
             ),
             label: 'Fast laugh'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.search,
             ),
             label: 'Search'),
         BottomNavigationBarItem(
             icon: Icon(
               Icons.arrow_circle_down_outlined,
             ),
             label: 'Downloads'),
       ],
     );
    },);
  }
}
