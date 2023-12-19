
// import 'package:flutter/material.dart';
// class MentorOnboard extends StatelessWidget {
//   const MentorOnboard({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Mentor Onboard"),
//       ),
//       body: const Center(
//         child: Text("Welcome to Mentor Onboard"),
//       ),
//     );
//   }
// }
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   // Dummy user data for demonstration
//   final String dummyEmail = "test@example.com";
//   final String dummyPassword = "password";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 100,
//         backgroundColor: const Color.fromARGB(255, 0, 180, 180),
//         title: const Text("Login",style: TextStyle(color: Colors.white),),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 16),
//             const Text(
//               "Welcome",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const SizedBox(height: 16),
//             const Text(
//               "Mentor Management System",
//               style: TextStyle(
//                 fontSize: 18,
//               ),
//             ),
//             const SizedBox(height: 30),
//             TextField(
//               controller: emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//                 labelStyle: TextStyle(color: Colors.teal),
//                 focusedBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.teal),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.teal),
//                 ),
//               ),
//               keyboardType: TextInputType.emailAddress,
//             ),
//             const SizedBox(height: 16),
//             TextField(
//               controller: passwordController,
//               decoration: const InputDecoration(
//                 labelText: 'Password',
//                 labelStyle: TextStyle(color: Colors.teal),
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.teal),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.teal),
//                 ),
//               ),
//               obscureText: true,
//             ),
//             const SizedBox(height: 25),
//             ElevatedButton(
//               onPressed: () {
//                 // Implement login logic here
//                 String email = emailController.text;
//                 String password = passwordController.text;
//
//                 // Dummy check for demonstration (replace with actual authentication logic)
//                 if (email == dummyEmail && password == dummyPassword) {
//                   Navigator.pushReplacement(
//                     context,
//                     MaterialPageRoute(builder: (context) => const MentorOnboard()),
//                   );
//                 } else {
//                   // Show an error message or handle authentication failure
//                   // For demonstration, just print a message
//                   print("Invalid credentials");
//                 }
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(
//                   const Color.fromARGB(255, 0, 180, 180),
//                 ),
//                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                   EdgeInsets.all(16.0),
//                 ),
//                 minimumSize: MaterialStateProperty.all<Size>(
//                   Size(double.infinity, 0),
//                 ),
//               ),
//               child: const Text(
//                 'Login',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class MentorOnboard extends StatelessWidget {
  const MentorOnboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mentor Onboard"),
      ),
      body: const Center(
        child: Text("Welcome to Mentor Onboard"),
      ),
    );
  }
}

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
      ),
      body: const Center(
        child: Text("Reset your password here"),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Dummy user data for demonstration
  final String dummyEmail = "test@example.com";
  final String dummyPassword = "password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: const Color.fromARGB(255, 0, 180, 180),
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.white),
        ),
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
                String email = emailController.text;
                String password = passwordController.text;

                // Dummy check for demonstration (replace with actual authentication logic)
                if (email == dummyEmail && password == dummyPassword) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MentorOnboard()),
                  );
                } else {
                  // Show an error message or handle authentication failure
                  // For demonstration, just print a message
                  print("Invalid credentials");
                }
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
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Navigate to the Forgot Password page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ForgotPasswordPage()),
                );
              },
              child: const Text(
                'Forgot Password?',
                style: TextStyle(color: Colors.teal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
