import 'package:flutter/material.dart';
import 'application_status.dart';

class CustomAlertDialog extends StatelessWidget {
  final String username;

  const CustomAlertDialog({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Registration Successful'),
      content: Text('Welcome, $username!'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}

 class ProfileAlertDialog extends StatelessWidget {
   const ProfileAlertDialog({super.key});

   @override
   Widget build(BuildContext context) {
     return AlertDialog(
       title: const Text("Profile Saved Successfully"),
     content: const Text(
     'You have successfully created your  profile and it has been saved.Kindly click on done to continue'
     ),
     actions: [
       TextButton(onPressed: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ApplicationStatus(username: '',)) );

     },
     child: const Text("Done")),

     ],
     );
   }
 }

class DocumentsAlertDialog extends StatelessWidget {

  const DocumentsAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Success !'),
      content: const Text('Your documents has been successfully  submitted.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const ApplicationStatus(username: '',)) );
          },
          child: const Text('OK',style: TextStyle(color: Colors.black),),
        ),

      ],
    );
  }
}
