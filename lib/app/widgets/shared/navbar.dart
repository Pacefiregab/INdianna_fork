import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: const Color.fromRGBO(23, 23, 25, 1),
      unselectedItemColor: const Color.fromRGBO(43, 44, 43, 1),
      showSelectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.location_on),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.visibility),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.download),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.notifications),
          ),
          label: '',
        ),
      ],
      // Add callback functions to handle navigation if necessary
    );
  }
}
