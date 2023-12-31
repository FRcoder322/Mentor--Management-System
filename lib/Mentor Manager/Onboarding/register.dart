import 'package:flutter/material.dart';

import '../../Mentors/Views/Onboarding/login.dart';



class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _State();
}

class _State extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Text("Mentor Manager"),
        ),
        body:  MentorManagerRegistration(
          username: '',
          onRegister: (String email) {},
        ),
      ),
    );
  }
}


class MentorManagerRegistration extends StatefulWidget {
  final String username;
  final Function(String email) onRegister;

  const MentorManagerRegistration(
      {Key? key, required this.username, required this.onRegister})
      : super(key: key);

  @override
  State<MentorManagerRegistration> createState() => _MentorManagerRegistrationState();
}

class _MentorManagerRegistrationState  extends State<MentorManagerRegistration>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(136, 252, 248, 252),
      body: ListView(
        padding: const EdgeInsets.all(20.0),
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

            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your FirstName",
            ),
          ),
          const SizedBox(height: 14),
          const Text("Last name"),
          TextFormField(

            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your last name",
            ),
          ),
          const SizedBox(height: 14),
          const Text("Email address"),
          TextFormField(

            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your email address",
            ),
          ),
          const SizedBox(height: 14),
          const Text("Password"),
          TextFormField(

            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your password",
            ),
          ),
          const SizedBox(height: 14),
          const Text("Confirm Password"),
          TextFormField(

            obscureText: true,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Confirm your password',
            ),
          ),
          const SizedBox(height: 14),
          TextButton(
            onPressed: () async {

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
            height: 10,
          ),
          const Text("................OR." "................",
              textAlign: TextAlign.center),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.grey),
            ),
            child: const Text("Sign Up with Google"),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Text("Already have an account ?"),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const LoginPage()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}


