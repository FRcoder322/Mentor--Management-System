import 'package:flutter/material.dart';


class ApplicationStatus extends StatefulWidget {
  @override
  _ApplicationStatus createState() => _ApplicationStatus();
}

class _ApplicationStatus extends State<ApplicationStatus> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Color.fromARGB(255, 161, 139, 164),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, Sandy',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              Text('Admin',style: TextStyle(fontSize: 14),),
            ],
          ),
          leading: Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://example.com/profile.jpg'),
            ),
          ),
          // actions: [
          //   Firebase loginButton(
          //     icon: Icon(Icons.settings),
          //     onPressed: () {
          //
          //     },
          //   ),
          // ],
        ),
        body: Center(
          child:Column(

            children: [
              Text("Application status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
              Checkbox(value: _isChecked, onChanged: (bool? value) {
                setState(() {
                  _isChecked = value ?? false;
                });
              },
              ),
            ],

          )
        ),
      ),
    );
  }
}
