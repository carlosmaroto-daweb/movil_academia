import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:movil_academia/ui/documents_page.dart';
import 'package:movil_academia/ui/notification_page.dart';
import 'package:movil_academia/ui/main_page.dart';
import 'package:movil_academia/ui/profile_page.dart';
import 'package:movil_academia/ui/settings_page.dart';

class Nav extends StatefulWidget {
  const Nav(this._selectedIndex, {super.key});
  // ignore: prefer_typing_uninitialized_variables
  final _selectedIndex;

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      iconSize: 30,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.white54,
      selectedItemColor: Colors.white,
      backgroundColor: const Color.fromRGBO(45, 43, 43, 1),
      currentIndex: widget._selectedIndex,
      onTap: _onItemTapped,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.source),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_active),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_filled),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '',
        ),
      ],
    );
  }

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        handleNavigateTapToControllerDocumentsPage(context);
        break;
      case 1:
        handleNavigateTapToControllerNotificationPage(context);
        break;
      case 2:
        handleNavigateTapToControllerMainPage(context);
        break;
      case 3:
        handleNavigateTapToControllerProfilePage(context);
        break;
      case 4:
        handleNavigateTapToControllerSettingsPage(context);
        break;
    }
  }

  void handleNavigateTapToControllerDocumentsPage(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const DocumentsPage()));
  }

  void handleNavigateTapToControllerNotificationPage(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const NotificationPage()));
  }

  void handleNavigateTapToControllerMainPage(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const MainPage()));
  }

  void handleNavigateTapToControllerProfilePage(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const ProfilePage()));
  }

  void handleNavigateTapToControllerSettingsPage(BuildContext context) {
    Navigator.of(context)
        .push(CupertinoPageRoute(builder: (_) => const SettingsPage()));
  }
}
