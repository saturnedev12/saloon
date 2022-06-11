import 'package:flutter/cupertino.dart';
import 'package:saloon/features/apointments/appointments.dart';
import 'package:saloon/features/boosky/boosky.dart';
import 'package:saloon/features/chat/chat_page.dart';
import 'package:saloon/features/explore/explore.dart';
import 'package:saloon/features/profile/profile.dart';

class Constants {
  static List<BottomNavigationBarItem> tabBarItems =
      const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.heart),
      label: 'My saloon',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      label: 'Explore',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.calendar),
      label: 'Appointments',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.chat_bubble_2_fill),
      label: 'Chat',
    ),
    BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.profile_circled),
      label: 'Profile',
    ),
  ];
  static List<Widget> listPages = const [
    Boosky(),
    Explore(),
    Appointments(),
    ChatPage(),
    Profile(),
  ];
}
