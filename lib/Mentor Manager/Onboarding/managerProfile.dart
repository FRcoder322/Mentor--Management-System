import 'package:flutter/material.dart';

class ManagerProfile extends StatefulWidget {
  const ManagerProfile({super.key});

  @override
  State<ManagerProfile> createState() => _ManagerProfileState();
}

class _ManagerProfileState extends State<ManagerProfile> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:Padding(padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Become a mentor manager",
            style: TextStyle(color: Colors.teal),),
            SizedBox(height: 5,),
            Text("Fill the form below"),
            SizedBox(height: 5,),
            Text("Page 1 of 4")
          ],
          
        ) ,

      ),
      

    );
  }
}



