import 'package:flutter/material.dart';

class AddGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Create a group'),
        actions: [
          TextButton(
            onPressed: () {
              // Handle the done action
            },
            child: Text(
              'Done',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {
                    // Handle image selection
                  },
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Group name',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text('Type', style: TextStyle(fontSize: 16)),
            SizedBox(height: 10.0),
            Wrap(
              spacing: 8.0,
              children: [
                ChoiceChip(
                  label: Text('Trip'),
                  selected: false,
                  onSelected: (selected) {
                    // Handle selection
                  },
                ),
                ChoiceChip(
                  label: Text('Home'),
                  selected: false,
                  onSelected: (selected) {
                    // Handle selection
                  },
                ),
                ChoiceChip(
                  label: Text('Couple'),
                  selected: false,
                  onSelected: (selected) {
                    // Handle selection
                  },
                ),
                ChoiceChip(
                  label: Text('Other'),
                  selected: false,
                  onSelected: (selected) {
                    // Handle selection
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

