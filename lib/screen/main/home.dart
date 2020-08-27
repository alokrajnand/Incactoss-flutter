import 'package:actoss_incident/env/theam.dart';
import 'package:actoss_incident/screen/main/drawer.dart';
import 'package:actoss_incident/screen/tabs/insopen.dart';
import 'package:actoss_incident/screen/tabs/insall.dart';
import 'package:actoss_incident/screen/tabs/insclosed.dart';
import 'package:actoss_incident/screen/tabs/insinvalid.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

////
  List<IconData> _icons = [
    Icons.shopping_basket,
    Icons.people,
    Icons.games,
    Icons.games,
  ];

  List<Text> _text = [
    Text(
      'All',
      style: TextStyle(
          fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
    ),
    Text(
      'Open',
      style: TextStyle(
          fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
    ),
    Text(
      'Closed',
      style: TextStyle(
          fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
    ),
    Text(
      'Invalid',
      style: TextStyle(
          fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700),
    ),
  ];

  /////
  Widget _buildTabContainer(int index) {
    if (index == 0) {
      return InsAllScreen();
    } else if (index == 1) {
      return InsOpenScreen();
    } else if (index == 2) {
      return InsClosedScreen();
    } else if (index == 3) {
      return InsInvalidScreen();
    } else {
      return Container(
        child: Text('No Tab Selected'),
      );
    }
  }

  Widget _buildicon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          height: 50.0,
          width: MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
              color: _selectedIndex == index
                  ? AppColors.PRIMARY_COLOR_LIGHT
                  : AppColors.PRIMARY_COLOR_DARK,
              borderRadius: BorderRadius.circular(0.0)),
          child: Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  _icons[index],
                  color: Colors.white,
                  size: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: _text[index],
                )
              ],
            ),
          )),
        ),
      ),
    );
  }

  ////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
      ),
      drawer: DrawerScreen(),
      body: Container(
        child: Column(
          children: <Widget>[
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _icons
                    .asMap()
                    .entries
                    .map(
                      (MapEntry map) => _buildicon(map.key),
                    )
                    .toList(),
              ),
            ),
            _buildTabContainer(_selectedIndex)
          ],
        ),
      ),
    );
  }
}
