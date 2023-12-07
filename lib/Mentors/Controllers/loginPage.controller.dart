


// bool validateLogin() {
//   // Retrieve the entered email and password
//   String enteredEmail = emailController.text.trim();
//   String enteredPassword = passwordController.text.trim();
//
//   // Check if the email is valid (you can use a regular expression for more complex validation)
//   if (!isValidEmail(enteredEmail)) {
//     // Show an error message or handle invalid email
//     print("Invalid email address");
//     return false;
//   }
//
//   // Check if the password meets your criteria (e.g., minimum length)
//   if (enteredPassword.length < 6) {
//     // Show an error message or handle invalid password
//     print("Password must be at least 6 characters long");
//     return false;
//   }
//
//   // Additional checks or authentication against a backend can be performed here
//
//   // If all checks pass, consider the login as valid
//   return true;
// }
//
// bool isValidEmail(String email) {
//   // A simple email validation using a regular expression
//   // Replace this with a more robust validation if needed
//   String emailRegex =
//       r'^[\w-]+(?:\.[\w-]+)*@(?:[\w-]+\.)+[a-zA-Z]{2,7}$';
//   RegExp regex = RegExp(emailRegex);
//   return regex.hasMatch(email);
// }
// }