import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'Mentors/Views/Onboarding/mentor_onboard.dart';
import 'Providers/user_data_provider.dart';
import 'Services/firebase_service.dart';
import 'firebase_options.dart';

void main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

     runApp(
          MultiProvider(
               providers: [
                    ChangeNotifierProvider(create: (context) => UserDataProvider()),
                    // Add other providers here, for example:
                     Provider<FirebaseServices>(create: (context) => FirebaseServices()),
               ],
               child: MaterialApp(
                    debugShowCheckedModeBanner: false,
                    home: SplashScreen(),
               ),
          ),
     );
}

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
