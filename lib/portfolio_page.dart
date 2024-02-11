import 'package:flutter/material.dart';

class PortfolioPage extends StatelessWidget {
  final String academic;
  final String athletic;
  final String performingArts;
  final String clubs;
  final String communityService;
  final String honorsClasses;
  final String other;

  PortfolioPage({
    required this.academic,
    required this.athletic,
    required this.performingArts,
    required this.clubs,
    required this.communityService,
    required this.honorsClasses,
    required this.other,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your Portfolio'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Academic Achievements: $academic',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Athletic Participation: $athletic',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Performing Arts Experience: $performingArts',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Clubs and Organization Memberships: $clubs',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Community Service Hours: $communityService',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Honors Classes: $honorsClasses',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Other: $other',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
