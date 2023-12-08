import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'mentor_dashboard.dart';



class ApplicationStatus extends StatefulWidget {
  final username;

  const ApplicationStatus({super.key,  required this.username, });

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
          backgroundColor: const Color.fromARGB(255, 0, 180, 180),
          title:   Row(
            children: [
              Column(
                children: [
                  Text('Hi,Username: ${widget.username}!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text('Admin',style: TextStyle(fontSize: 14),),
                ],
              ),
            ],
          ),
          leading: const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(

              radius: 20,
              backgroundImage: NetworkImage('https://example.com/profile.jpg'),
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),

          children:[

            const Text("Application status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox( height: 20),
              Row(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Checkbox(value: _isChecked, onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                    ),
                  ),
                  const SizedBox( height: 20),
                  const Text("Application Submitted", style: TextStyle(fontSize: 14),)
                ],
              ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Checkbox(value: _isChecked, onChanged: (bool?value)
                    {
                      setState(() {
                        _isChecked=value ?? false;
                      });
                    }),
                  ),
                ),
                const SizedBox(height: 16,),
                const Text("Application pending Review" ,style: TextStyle(fontSize: 14),),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Checkbox(value: _isChecked, onChanged: (bool?value)
                  {
                    setState(() {
                      _isChecked=value ?? false;
                    });
                  }),
                ),
                const Text("Application approved"),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  height: 2,
                  width: 150,
                  color: Colors.black,

                ),
                TextButton(onPressed: (){

                }, child: const Text("Date")),

                Container(
                  height: 2,
                  width: 150,
                  color: Colors.black,

                ),
              ],
            ),
            const SizedBox(height: 16,),
            const Text("Your application to be mentor is in progress.you will get a"
                " notification about the final update soon."),

            const SizedBox(height: 30,),
            const Text("Admin",style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 100,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MentorDashboard()),);
            },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  const EdgeInsets.symmetric(vertical: 20),
                ),
                shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
              ),
              child: const Center(
                child: Text("Start your journey"),
              ),
            ),

        ],

        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:mms_project/Mentors/Onboarding/mentor_dashboard.dart';
//
// class ApplicationStatus extends StatefulWidget {
//   final String username;
//
//   const ApplicationStatus({Key? key, required this.username}) : super(key: key);
//
//   @override
//   _ApplicationStatusState createState() => _ApplicationStatusState();
// }
//
// class _ApplicationStatusState extends State<ApplicationStatus> {
//   bool _isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 80,
//           backgroundColor: const Color.fromARGB(255, 0, 180, 180),
//           title: Row(
//             children: [
//               Column(
//                 children: [
//                   Text(
//                     'Hi, Username: ${widget.username}!',
//                     style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     'Admin',
//                     style: TextStyle(fontSize: 14),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           leading: const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: CircleAvatar(
//               radius: 20,
//               backgroundImage: NetworkImage('https://example.com/profile.jpg'),
//             ),
//           ),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(16),
//           children: [
//             const Text("Application status", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//             const SizedBox(height: 20),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.grey,
//                       width: 2,
//                     ),
//                   ),
//                   child: Checkbox(
//                     value: _isChecked,
//                     onChanged: (bool? value) {
//                       setState(() {
//                         _isChecked = value ?? false;
//                       });
//                     },
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 const Text("Application Submitted", style: TextStyle(fontSize: 14)),
//               ],
//             ),
//             // ... other rows ...
//
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MentorDashboard()));
//               },
//               child: const Text("Start your Journey"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

