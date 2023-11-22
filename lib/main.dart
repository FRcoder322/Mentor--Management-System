import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mms_project/Mentors/Onboarding/mentor_onboard.dart';
void main()

 // void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
     => runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ));
// }

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

      backgroundColor: const Color.fromARGB(255, 0, 180, 180),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/splash2.png',
              width: 100.0,
              height: 100.0,
            ),

            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                style: TextStyle(
                  color: Color.fromARGB(255, 23, 22, 23),
                  fontSize: 30.0,
                ),
                children: [
                  TextSpan(text: 'Mentor Management\n'),
                  TextSpan(text: 'System'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
