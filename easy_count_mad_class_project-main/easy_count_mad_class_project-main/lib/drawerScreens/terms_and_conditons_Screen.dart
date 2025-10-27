import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Terms and Conditions'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Introduction',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'These terms and conditions outline the rules and regulations for the use of our app. Please read them carefully.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'User Responsibilities',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'By accessing this app, we assume you accept these terms and conditions in full. Do not continue to use the app if you do not accept all of the terms and conditions.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'License',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Unless otherwise stated, the app and/or its licensors own the intellectual property rights for all material on this app. All intellectual property rights are reserved.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Restrictions',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'You are specifically restricted from the following:\n'
                    '- Publishing any app material in any other media\n'
                    '- Selling, sublicensing, and/or otherwise commercializing any app material\n'
                    '- Using this app in any way that is damaging or unlawful',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Modifications to the Terms',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We reserve the right to modify these terms at any time. Please check this page regularly to stay updated with any changes.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'If you have any questions about these terms, please contact us at support@yourapp.com.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
