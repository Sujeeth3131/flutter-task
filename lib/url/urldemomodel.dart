
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../imagepicker/imagepickerdemo.dart';

void main() {
  runApp(MyApp());
}

class Electric extends StatefulWidget {
  @override
  State< Electric> createState() => _MyAppState();
}

class _MyAppState extends State< Electric> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Phone Call Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              _makePhoneCall('tel:+1234567890');  // Replace with actual phone number
            },
            child: Text('Call Now'),
          ),
        ),
      ),
    );
  }

  void _makePhoneCall(String phoneNumber) async {
    final Uri callUri = Uri(scheme: 'tel', path: phoneNumber);  // Set up a 'tel:' scheme URI
    if (await canLaunchUrl(callUri)) {
      await launchUrl(callUri);  // Launches the dialer with the phone number
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }
}
