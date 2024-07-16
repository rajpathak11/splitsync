import 'package:flutter/material.dart';
import 'package:splitsync/CreatedGroup.dart';
import 'package:splitsync/FriendsPage.dart';
import 'package:splitsync/ActivityPage.dart';
import 'package:splitsync/AccountPage.dart';
import 'package:splitsync/AddGroup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin{
  int _selectedIndex = 0;

  final List<Widget> _Pages = [
    CreatedGroup(),
    FriendsPage(),
    ActivityPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top:40,left:25,right:5,bottom:35),
              child: IconButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> Search())),
                  icon: Icon(Icons.search)),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40,left:10,right: 20,bottom: 35),
              child: IconButton(onPressed: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=> AddGroup())),
                  icon: Icon(Icons.group_add)),
            ),
          ],
        ),

      body: _Pages[_selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          CustomBottomNavigationBarItem(icon: Icons.people, label: 'Groups'),
          CustomBottomNavigationBarItem(
              icon: Icons.accessibility, label: 'Friends'),
          CustomBottomNavigationBarItem(
              icon: Icons.local_activity, label: 'Activity'),
          CustomBottomNavigationBarItem(
              icon: Icons.account_circle, label: 'Account'),
        ],
      ),
      ),
    );
  }
}


class Search extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(appBar: AppBar(
    title: Text('Search ',style: TextStyle(fontSize: 30),),
  ),
    body: Center(
      child: Text('search contacts'),
    ),);
  }
}

class Group extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create a group',style: TextStyle(fontSize: 30),),
      ),
      body: Center(
        child: Text('Add Group'),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  final List<CustomBottomNavigationBarItem> items;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: items.map((item) {
        final isActive = items.indexOf(item) == currentIndex;
        return BottomNavigationBarItem(
            icon: Icon(item.icon, size: 24, color: isActive ? Colors.green : Colors.grey),
          label: item.label,
        );
      }).toList(),
      currentIndex: currentIndex,
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.grey,
      onTap: onTap,
      showSelectedLabels: true,
      showUnselectedLabels: true,
    );
  }
}

class CustomBottomNavigationBarItem {
  final IconData icon;
  final String label;

  CustomBottomNavigationBarItem({
    required this.icon,
    required this.label,
  });
}
