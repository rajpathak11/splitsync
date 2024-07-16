
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();

}
class _BottomNavState extends State<Bottomnav>
{
  int _selectedIndex = 0;

  void onItemTapped(int index)
  {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(),
      bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,

        items:const<BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.people,size: 24,),
            activeIcon: Icon(Icons.people, size: 24),
            label: 'Groups',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility,size: 24,),
            activeIcon: Icon(Icons.accessibility,size: 24,),
            label: 'Friends',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity,size: 24,),
            activeIcon: Icon(Icons.local_activity, size: 24,),
            label: 'Activity',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle,size: 24,),
            activeIcon: Icon(Icons.account_circle,size: 24,),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap:onItemTapped,
      ),
    );
  }

}

