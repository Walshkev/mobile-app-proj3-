import 'package:flutter/material.dart';
import 'dart:math';
import 'package:url_launcher/url_launcher.dart';


 // Import the WebViewPage class

//link to how to use images in flutter 
 //https://stackoverflow.com/questions/50903106/how-to-add-image-in-flutter 

final Uri _url= Uri.parse('https://github.com/Walshkev/mobile-app-proj3-.git');

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
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 10),
            john_doe(),
            job_position(),
            SizedBox(height: 10),
            Call(),
            GestureDetector(
              onTap: () {
          
                _launchUrl();
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
                _launchPhone('tel:555555555');
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

  void _launchPhone(String website) async {
    var url = Uri.parse(website);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $website';
    }
  }
  // void LaunchWebsite(String string) async {
  //   const url = string ;
    
  // }

  Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
}

class john_doe extends StatelessWidget {
  const john_doe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'John Doe',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class Call extends StatelessWidget {
  const Call({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Calling John Doe');
        launchUrl(Uri.parse('sms:5555555555'));
      },
      child: Container(
      padding: EdgeInsets.all(10),
      // decoration: BoxDecoration(
      //   color: Colors.blueAccent,
      //   borderRadius: BorderRadius.circular(8),
      // ),
      child: Text(
        '555-555-5555',
        style: TextStyle(
        fontSize: 18,
        color: Colors.white,
        ),
      ),
      ),
    );
  }
}

class job_position extends StatelessWidget {
  const job_position({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Software Engineer',
      style: TextStyle(
        fontSize: 18,
        color: Colors.white70,
      ),
    );
  }
}
