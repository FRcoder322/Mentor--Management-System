// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key});
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100,
//         backgroundColor: Colors.teal,
//         title: const Text("Login Page"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Email TextField
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20.0),
//
//             // Password TextField
//             TextField(
//               controller: passwordController,
//               obscureText: true,
//               decoration: const InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 16.0),
//
//             // Login Button
//             Container(
//               height: 56.0,
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () async {
//                   // Implement your login logic here
//                   if (validateLogin()) {
//                     try {
//                       // Sign in with email and password
//                       UserCredential userCredential =
//                       await _auth.signInWithEmailAndPassword(
//                         email: emailController.text.trim(),
//                         password: passwordController.text.trim(),
//                       );
//
//                       // Check if the user is email verified
//                       if (userCredential.user != null &&
//                           userCredential.user!.emailVerified) {
//                         // Navigate to the next screen
//                         Navigator.pushReplacement(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ProgramProfile(
//                               userId: userCredential.user!.uid,
//                             ),
//                           ),
//                         );
//                       } else {
//                         print("Email not verified. Please verify your email.");
//                         // Handle the case where the email is not verified
//                       }
//                     } on FirebaseAuthException catch (e) {
//                       // Handle login errors (e.g., invalid email or password)
//                       print('Error during login: ${e.message}');
//                     }
//                   }
//                 },
//                 style: ButtonStyle(
//                   backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
//                   foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
//                 ),
//                 child: const Text('Login'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   bool validateLogin() {
//     // Retrieve the entered email and password
//     String enteredEmail = emailController.text.trim();
//     String enteredPassword = passwordController.text.trim();
//
//     // Check if the email is valid (you can use a regular expression for more complex validation)
//     if (!isValidEmail(enteredEmail)) {
//       // Show an error message or handle invalid email
//       print("Invalid email address");
//       return false;
//     }
//
//     // Check if the password meets your criteria (e.g., minimum length)
//     if (enteredPassword.length < 6) {
//       // Show an error message or handle invalid password
//       print("Password must be at least 6 characters long");
//       return false;
//     }
//
//     // Additional checks or authentication against a backend can be performed here
//
//     // If all checks pass, consider the login as valid
//     return true;
//   }
//
//   bool isValidEmail(String email) {
//     // A simple email validation using a regular expression
//     // Replace this with a more robust validation if needed
//     String emailRegex =
//         r'^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$';
//     RegExp regex = RegExp(emailRegex);
//     return regex.hasMatch(email);
//   }
// }
//
//


// class LoginPage extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   LoginPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(labelText: 'Email'),
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: const InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement login logic here
//                 // Fetch user data from Firestore based on email and password
//                 String email = emailController.text;
//                 String password = passwordController.text;
//
//                 Navigator.pushReplacement(
//                   context,
//                   MaterialPageRoute(builder: (context) => const ProgramProfile(userId: '',)),
//                 );
//               },
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'program_profile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 0, 180, 180),
        title: const Text("Login"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            const Text(
              "Welcome",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              "Mentor Management System",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 30),
            TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                labelStyle: TextStyle(color: Colors.teal),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(color: Colors.teal),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.teal),
                ),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                // Implement login logic here
                // Fetch user data from Firestore based on email and password
                String email = emailController.text;
                String password = passwordController.text;

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const ProgramProfile(userId: '')),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromARGB(255, 0, 180, 180),
                ),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  EdgeInsets.all(16.0),
                ),
                minimumSize: MaterialStateProperty.all<Size>(
                  Size(double.infinity, 0),
                ),
              ),
              child: const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}