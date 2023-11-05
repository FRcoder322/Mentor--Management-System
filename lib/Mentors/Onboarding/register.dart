import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/alert_dialog.dart';

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
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your password",
            ),
          ),
          SizedBox(height: 14),
          Text("Confirm Password"),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'confirm your password',
            ),
          ),
          SizedBox(height: 14),
          TextButton(
            onPressed: () {
              // Show the custom AlertDialog
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomAlertDialog(); // Use the custom AlertDialog widget here
                },
              );
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromARGB(255, 216, 176, 224),
              ),
            ),
            child: Text(
              "Register",
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(height: 20,),
          Text("..........................................OR........"
              "....................................",),

          SizedBox(height: 30,),
          TextButton(
            onPressed: (){

            },
            style: OutlinedButton.styleFrom(
                side: BorderSide(color: Colors.grey)
            ),
            child: Text("Sign Up with Google"),
          ),
          SizedBox(height: 16,),
          Row(
            children: [
              Text("Already have an account ?"),
              TextButton(onPressed: (){

              }, child: Text("Login")),
            ],
          )
        ],
      ),
    );
  }
}



