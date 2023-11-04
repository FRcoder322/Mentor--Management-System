import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 161, 139, 164),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Mentor'),
        ),
        body: Center(
          child: RegistrationContent(),
        ),
      ),
    );
  }
}

class RegistrationContent extends StatelessWidget {
  const RegistrationContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          SizedBox(height: 14),
          Text("Join the team", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 14),
          Text("Fill the form to join program, collaborate effectively and efficiently with team members"),
          SizedBox(height: 16),
          Text("First name"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your FirstName",
            ),
          ),
          SizedBox(height: 14),
          Text("Last name"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your last name",
            ),
          ),
          SizedBox(height: 14),
          Text("Email address"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your email address",
            ),
          ),
          SizedBox(height: 14),
          Text("Password"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your password",
            ),
          ),
          SizedBox(height: 14),
          Text("Confirm Password"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'confirm your password',
            ),
          ),
          SizedBox(height: 14),
          TextButton(

            onPressed: () {
              // Handle registration logic
            },
            child: Text("Register", style: TextStyle(fontSize: 16,),),
          ),
        ],
      ),
    );
  }
}
