import 'package:flutter/material.dart';
import 'package:mega_cashout/screen/extra_screen.dart';
import 'package:mega_cashout/screen/fiveodds_screen.dart';
import 'package:mega_cashout/screen/home_screen.dart';
import 'package:mega_cashout/screen/tenodds_screen.dart';
import 'package:mega_cashout/screen/vip_screen.dart';
import 'package:tabler_icons/tabler_icons.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _Home();
  }
}

class _Home extends State<Home>{
  int _selectedIndex=0;
  static final List<Widget> _navWidget =<Widget>[
    const HomeScreen(),
    const FiveScreen(),
    const TenScreen(),
    const ExtraScreen(),
    const VipScreen(),
  ];

  void _onIconTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Center(
        child: _navWidget[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onIconTapped,
        elevation: 10,
        //showSelectedLabels: false,
        //showUnselectedLabels: false,
        selectedItemColor: Colors.lightGreen,
        unselectedItemColor: Colors.lightGreenAccent,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(TablerIcons.trophy), label: "5 Odds"),
          BottomNavigationBarItem(icon: Icon(TablerIcons.trophy), label: "10 Odds"),
          BottomNavigationBarItem(icon: Icon(TablerIcons.trophy), label: "Extras"),
          BottomNavigationBarItem(icon: Icon(TablerIcons.trophy), label: "VIP"),
        ],
      ),
    );
  }
}