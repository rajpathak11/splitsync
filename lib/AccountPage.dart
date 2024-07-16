import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text('raj pathak'),
                subtitle: Text('pathakraj390@gmail.com'),
                trailing:  GestureDetector(
                    onTap: ()=> null,
                    child: Icon(Icons.edit),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.qr_code),
                title: Text('Scan code'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.diamond),
                title: Text('Splitwise Pro'),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Email settings'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Device and push notification settings'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.lock),
                title: Text('Passcode'),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.star),
                title: Text('Rate Splitwise'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Contact Splitwise support'),
                onTap: () => null,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log out'),
                onTap: () => null,
              ),
            ],
          ),
        ),
      ),
    );
  }


}
