import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/mentor_onboard.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen(),
));

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const MentorOnboard(),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 161, 139, 164),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Mentor Management System',
              style: TextStyle(
                color: Color.fromARGB(255, 23, 22, 23),
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}