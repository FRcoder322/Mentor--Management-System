import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/program_profile.dart';
import 'package:mms_project/Mentors/Onboarding/select_option.dart';

import 'alert_dialog.dart';
import 'login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registration(username: "example_username"),
    );
  }
}

class Registration extends StatefulWidget {
  final String username;

  const Registration({Key? key, required this.username}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Mentor'),
        ),
        body: RegistrationContent(username: widget.username),
      ),
    );
  }
}

class RegistrationContent extends StatefulWidget {
  final String username;

  const RegistrationContent({Key? key, required this.username}) : super(key: key);

  @override
  State<RegistrationContent> createState() => _RegistrationContentState();
}

class _RegistrationContentState extends State<RegistrationContent> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  Future<void> _registerAndVerifyEmail() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text,
      );

      // Store user data in Cloud Firestore
      await _firestore.collection('Mentors').doc(userCredential.user!.uid).set({
        'firstName': firstNameController.text,
        'lastName': lastNameController.text,
        'email': emailController.text.trim(),
        // Add other user data as needed
      });

      // Send email verification
      await userCredential.user!.sendEmailVerification();

      // Display alert dialog
      BuildContext dialogContext = context;
      showDialog(
        context: dialogContext,
        builder: (BuildContext context) {
          return CustomAlertDialog(username: widget.username);
        },
      );

      // Navigate to UserProfile form after successful registration
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => ProgramProfile(userId: userCredential.user!.uid),
        ),
      );
    } on FirebaseAuthException catch (e) {
      // Handle registration errors (e.g., weak password, email already in use)
      print('Error during registration: ${e.message}');
    }
  }

  Future<void> _checkEmailVerification() async {
    User? user = _auth.currentUser;

    if (user != null && !user.emailVerified) {
      // Show a message or navigate to a screen indicating that email verification is required
      print('Email not verified. Please verify your email.');
    } else {
      // Continue to the next screen or perform the desired action
      print('Email verified. Continue with the app.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          const SizedBox(height: 14),
          const Text(
            "Join the team",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 14),
          const Text(
              "Fill the form to join program, collaborate effectively and efficiently with team members"),
          const SizedBox(height: 16),
          const Text("First name"),
          TextFormField(
            controller: firstNameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your FirstName",
            ),
          ),
          const SizedBox(height: 14),
          const Text("Last name"),
          TextFormField(
            controller: lastNameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your last name",
            ),
          ),
          SizedBox(height: 14),
          Text("Email address"),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your email address",
            ),
          ),
          SizedBox(height: 14),
          Text("Password"),
          TextFormField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your password",
            ),
          ),
          SizedBox(height: 14),
          Text("Confirm Password"),
          TextFormField(
            controller: confirmPasswordController,
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Confirm your password',
            ),
          ),
          SizedBox(height: 14),
          TextButton(
            onPressed: () async {
              await _registerAndVerifyEmail();
              // Check if email is verified before proceeding
              await _checkEmailVerification();
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 0, 180, 180),
              ),
            ),
            child: const Text(
              "Register",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            ".............................OR."
                "................................",
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.grey),
            ),
            child: const Text("Sign Up with Google"),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text("Already have an account ?"),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black26),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

