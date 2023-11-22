import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/mentor_dashboard.dart';
import 'package:mms_project/Mentors/Onboarding/program_profile.dart';
import 'package:mms_project/Mentors/Onboarding/application_status.dart';

import '../Dashboard/dashboard.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Verification sent?'),
      content: const Text(
          'A verification message has been sent to your registered email. Please click on the link to verify your account'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ProgramProfile()));
          },
          child: Text('Continue'),
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
       title: Text("Profile Saved Successfully"),
     content: Text(
     'You have successfully created your  profile and it has been saved.Kindly click on done to continue'
     ),
     actions: [
       TextButton(onPressed: (){
         Navigator.of(context).push(MaterialPageRoute(builder: (context) => ApplicationStatus()) );

     },
     child: Text("Done")),

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
            Navigator.of(context).push(MaterialPageRoute(builder: (context) =>MentorDashboard()) );
          },
          child: const Text('OK',style: TextStyle(color: Colors.black),),
        ),

      ],
    );
  }
}
