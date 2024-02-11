// home_screen.dart

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio App'),
      ),
      body: Center(
        child: Text('Welcome to Portfolio App'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Academic Achievements'),
              onTap: () {
                // Navigate to Academic Achievements Screen
              },
            ),
            ListTile(
              title: Text('Athletic Participation'),
              onTap: () {
                // Navigate to Athletic Participation Screen
              },
            ),
            // Add more list tiles for other sections
          ],
        ),
      ),
    );
  }
}
