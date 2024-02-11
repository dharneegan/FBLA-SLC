import 'package:flutter/material.dart';


void main() {
  runApp(FBLAAchievementsTrackerApp());
}

class FBLAAchievementsTrackerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FBLA Achievements Tracker',
      theme: ThemeData(
        primaryColor: Color(0xFF004B8D), // FBLA Blue
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue, // Use primarySwatch for primary color
          accentColor: Color(0xFFFFD700), // FBLA Yellow
        ),
        scaffoldBackgroundColor: Color(0xFFF5F5F5), // Light Grey
        fontFamily: 'FBLAFont', // Use FBLA font
      ),
      home: FBLALogoPage(),
    );
  }
}

class FBLALogoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/fbla.png'), // FBLA logo image
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FormPage()),
                );
              },
              child: Text('Start'), // Change button text to 'Start'
            ),
          ],
        ),
      ),
    );
  }
}

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  late TextEditingController academicController;
  late TextEditingController athleticController;
  late TextEditingController performingArtsController;
  late TextEditingController clubsController;
  late TextEditingController communityServiceController;
  late TextEditingController honorsClassesController;
  late TextEditingController otherController;

  @override
  void initState() {
    super.initState();
    academicController = TextEditingController();
    athleticController = TextEditingController();
    performingArtsController = TextEditingController();
    clubsController = TextEditingController();
    communityServiceController = TextEditingController();
    honorsClassesController = TextEditingController();
    otherController = TextEditingController();
  }

  @override
  void dispose() {
    academicController.dispose();
    athleticController.dispose();
    performingArtsController.dispose();
    clubsController.dispose();
    communityServiceController.dispose();
    honorsClassesController.dispose();
    otherController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Page'),
      ),
      body: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: academicController,
                decoration: InputDecoration(labelText: 'Academic Achievements'),
              ),
              TextField(
                controller: athleticController,
                decoration: InputDecoration(labelText: 'Athletic Participation'),
              ),
              TextField(
                controller: performingArtsController,
                decoration: InputDecoration(labelText: 'Performing Arts Experience'),
              ),
              TextField(
                controller: clubsController,
                decoration: InputDecoration(labelText: 'Clubs and Organization Memberships'),
              ),
              TextField(
                controller: communityServiceController,
                decoration: InputDecoration(labelText: 'Community Service Hours'),
              ),
              TextField(
                controller: honorsClassesController,
                decoration: InputDecoration(labelText: 'Honors Classes'),
              ),
              TextField(
                controller: otherController,
                decoration: InputDecoration(labelText: 'Other'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Create a PortfolioData instance with the submitted data
                  PortfolioData data = PortfolioData(
                    academic: academicController.text,
                    athletic: athleticController.text,
                    performingArts: performingArtsController.text,
                    clubs: clubsController.text,
                    communityService: communityServiceController.text,
                    honorsClasses: honorsClassesController.text,
                    other: otherController.text,
                  );
                  // Navigate to the PortfolioPage with the submitted data
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PortfolioPage(data: data)),
                  );
                },
                child: Text('Submit'), // Change button text to 'Submit'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  final PortfolioData data;

  PortfolioPage({required this.data});

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
              'Academic Achievements: ${data.academic}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Athletic Participation: ${data.athletic}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Performing Arts Experience: ${data.performingArts}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Clubs and Organization Memberships: ${data.clubs}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Community Service Hours: ${data.communityService}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Honors Classes: ${data.honorsClasses}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Other: ${data.other}',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class PortfolioData {
  final String academic;
  final String athletic;
  final String performingArts;
  final String clubs;
  final String communityService;
  final String honorsClasses;
  final String other;

  PortfolioData({
    required this.academic,
    required this.athletic,
    required this.performingArts,
    required this.clubs,
    required this.communityService,
    required this.honorsClasses,
    required this.other,
  });
}
