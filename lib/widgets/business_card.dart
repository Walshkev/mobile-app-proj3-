import 'package:flutter/material.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart' as launcher;




class BusinessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(height: 10),
            Text(
              'John Doe',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Software Engineer',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                print('Calling John Doe');
                _launchURL('tel:+5555555555');
              },
              child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '555-555-5555',
                style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                ),
              ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchURL('https://github.com/johndoe');
              },
              child: Text(
                'https://github.com/johndoe',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                // Implement email tap action
                _launchURL('tel:555555555');
              },
              child: Text(
                'johndoe@example.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String website) async {
    var url = Uri.parse(website);
    if (await launcher.canLaunchUrl(url)) {
      await launcher.launchUrl(url);
    } else {
      throw 'Could not launch $website';
    }
  }
}

