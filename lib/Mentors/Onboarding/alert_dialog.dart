import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/program_profile.dart';

class CustomAlertDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Verification sent?'),
      content: Text(
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
