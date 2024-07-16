import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FriendsPage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Divider(),
              ListTile(
                leading: Image.asset('assets/f1.png'),
                title: Text('Benjamin Frankliln'),
                trailing: Text("no expences"),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                leading: Image.asset('assets/f1.png'),
                title: Text('Martha Clark'),
                trailing: Text('200',style:TextStyle(color: Colors.red),),
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
            label: Text('Add New Friends'),
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

