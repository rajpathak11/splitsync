import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';


class ActivityPage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity",style: TextStyle(fontWeight:FontWeight.bold),),
      ),
      body: Column(
        children: [
          ListView(
          shrinkWrap: true,
          children: [
          Divider(),
      ListTile(
        leading: Image.asset('assets/f1.png'),
        title: Text('YOU paid BENJAMIN FRANKLIN in "France Trip" '),
        subtitle: Text('YOU paid INR 250.80 ',style: TextStyle(color: Colors.green),),
        onTap: () => null,
      ),
      Divider(),
      ListTile(
        leading: Image.asset('assets/f1.png'),
        title: Text('BENJAMIN FRANKLIN added "BREAKFAST" in "France Trip"'),
        subtitle: Text('YOU owed INR 50.90',style:TextStyle(color: Colors.red),),
        onTap: () => null,
      ),
      Divider(),
      ],
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
