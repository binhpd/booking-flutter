import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hello_project/screens/home_screen.dart';
import 'package:hello_project/screens/search_screen.dart';
import 'package:hello_project/screens/ticket_screen.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _selectedIndex = 2;
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const Text("Profile")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My tickets"),
      ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _onTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_regular), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.airplane_ticket), label: "Tab3"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Tab3")
    ],
    ),
    );
  }

  void _onTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    print('${_selectedIndex}');
  }
}
