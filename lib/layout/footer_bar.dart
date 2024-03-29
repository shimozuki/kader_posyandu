import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  const MyBottomNavigationBar(
      {super.key, required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: onTabTapped,
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xff407ce2),
      unselectedItemColor: Color.fromARGB(255, 179, 178, 178),
      selectedLabelStyle: const TextStyle(color: Color(0xff000000)),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.medication_liquid),
          label: 'Pendataan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
