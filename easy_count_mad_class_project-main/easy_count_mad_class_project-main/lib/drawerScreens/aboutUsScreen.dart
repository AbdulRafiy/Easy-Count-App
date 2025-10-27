import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<AboutUsScreen> {
  final String num1 = '03061603589';
  final String num2 = '03123197935';
  final String mail = 'abdulrafaypk974@gmail.com';

  // Method to launch URLs for social handles
  Future<void> _urlLauncher(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 340,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeaderCard('About Us', 24),
              const SizedBox(height: 20),
              _buildDescriptionCard(
                  'App Developed by: Abdul Rafiy and Abid Ali', 16),
              const SizedBox(height: 20),
              _buildHeaderCard('Follow Us', 24),
              const SizedBox(height: 20),
              _buildSocialRow(),
            ],
          ),
        ),
      ),
    );
  }

  // Header Card with Bold Title
  Widget _buildHeaderCard(String text, double fontSize) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.blueGrey, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[800],
            ),
          ),
        ),
      ),
    );
  }

  // Description Card with smaller text
  Widget _buildDescriptionCard(String text, double fontSize) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.blueGrey, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: fontSize,
              color: Colors.grey[700],
            ),
          ),
        ),
      ),
    );
  }

  // Social icons row
  Widget _buildSocialRow() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: Colors.blueGrey, width: 2.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                _urlLauncher('https://www.facebook.com/share/16uznLnHyZ/');
              },
              icon: const FaIcon(FontAwesomeIcons.facebook,
                  color: Colors.blueGrey, size: 30),
            ),
            IconButton(
              onPressed: () {
                _urlLauncher('https://www.linkedin.com/in/abdul-rafiy-223756310?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app');
              },
              icon: const FaIcon(FontAwesomeIcons.linkedin,
                  color: Colors.blueGrey, size: 30),
            ),
            IconButton(
              onPressed: () {
                _urlLauncher('https://github.com/AbdulRafiy');
              },
              icon: const FaIcon(FontAwesomeIcons.github,
                  color: Colors.blueGrey, size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
