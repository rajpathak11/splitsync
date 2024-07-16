import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatedGroup extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children:[
          Divider(),
          ListView(
         shrinkWrap: true,
        children: [
          ListTile(
            title: Text('you all sattel up'),
            trailing: Icon(Icons.filter_list),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/1.png'),
            title: Text('France Trip'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/2.png'),
            title: Text('Austrelia Trip'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/3.png'),
            title: Text('Jakarta Trip'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/4.png'),
            title: Text('AbuDabhi Trip'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/4.png'),
            title: Text('AbuDabhi Trip'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/4.png'),
            title: Text('AbuDabhi Trip'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Image.asset('assets/4.png'),
            title: Text('AbuDabhi Trip'),
            onTap: () => null,
          ),
          Divider(),
        ],
      ),

    ElevatedButton.icon(
    onPressed: () {
    //Add your onPressed code here!
    },
    icon: Icon(Icons.group_add),
    label: Text('Start a new group'),
    style: ElevatedButton.styleFrom(
       foregroundColor: Colors.green,
      backgroundColor: Colors.white, // Text color
    side: BorderSide(color: Colors.green),
    ),
    ),

    ],
    ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        icon: Icon(Icons.add),
        label: Text('Add Expense'),
        backgroundColor: Colors.lightGreen,
      ),
    );
  }
}