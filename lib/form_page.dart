import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController academicController = TextEditingController();
  final TextEditingController athleticController = TextEditingController();
  final TextEditingController performingArtsController = TextEditingController();
  final TextEditingController clubsController = TextEditingController();
  final TextEditingController communityServiceController = TextEditingController();
  final TextEditingController honorsClassesController = TextEditingController();
  final TextEditingController otherController = TextEditingController();
  String errorMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Submit Info'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: academicController,
                decoration: InputDecoration(
                  labelText: 'Academic Achievements',
                ),
                onChanged: (value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: athleticController,
                decoration: InputDecoration(
                  labelText: 'Athletic Participation',
                ),
                onChanged: (value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: performingArtsController,
                decoration: InputDecoration(
                  labelText: 'Performing Arts Experience',
                ),
                onChanged: (value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: clubsController,
                decoration: InputDecoration(
                  labelText: 'Clubs and Organization Memberships',
                ),
                onChanged: (value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: communityServiceController,
                decoration: InputDecoration(
                  labelText: 'Community Service Hours',
                ),
                onChanged: (value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: honorsClassesController,
                decoration: InputDecoration(
                  labelText: 'Honors Classes',
                ),
                onChanged: (value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16),
              TextFormField(
                controller: otherController,
                decoration: InputDecoration(
                  labelText: 'Other',
                ),
                onChanged: (value) {
                  // Handle onChanged event
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_isFormIncomplete()) {
                    setState(() {
                      errorMessage = 'Please fill out all fields';
                    });
                  } else {
                    // Proceed with form submission
                    // Reset error message
                    setState(() {
                      errorMessage = '';
                    });
                  }
                },
                child: Text('Submit'),
              ),
              SizedBox(height: 8),
              errorMessage.isEmpty
                  ? Container()
                  : Text(
                errorMessage,
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isFormIncomplete() {
    return academicController.text.isEmpty ||
        athleticController.text.isEmpty ||
        performingArtsController.text.isEmpty ||
        clubsController.text.isEmpty ||
        communityServiceController.text.isEmpty ||
        honorsClassesController.text.isEmpty ||
        otherController.text.isEmpty;
  }
}
