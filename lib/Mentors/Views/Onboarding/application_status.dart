// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
//
// import 'mentor_dashboard.dart';
//
//
//
// class ApplicationStatus extends StatefulWidget {
//   final username;
//
//   const ApplicationStatus({super.key,  required this.username, });
//
//   @override
//   _ApplicationStatus createState() => _ApplicationStatus();
// }
//
// class _ApplicationStatus extends State<ApplicationStatus> {
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
//           title:   Row(
//             children: [
//               Column(
//                 children: [
//                   Text('Hi,Username: ${widget.username}!',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
//                   Text('Admin',style: TextStyle(fontSize: 14),),
//                 ],
//               ),
//             ],
//           ),
//           leading: const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: CircleAvatar(
//
//               radius: 20,
//               backgroundImage: NetworkImage('https://example.com/profile.jpg'),
//             ),
//           ),
//         ),
//         body: ListView(
//           padding: const EdgeInsets.all(16),
//
//           children:[
//
//             const Text("Application status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
//             const SizedBox( height: 20),
//               Row(
//                mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                         color: Colors.grey,
//                         width: 2,
//                       ),
//                     ),
//                     child: Checkbox(value: _isChecked, onChanged: (bool? value) {
//                       setState(() {
//                         _isChecked = value ?? false;
//                       });
//                     },
//                     ),
//                   ),
//                   const SizedBox( height: 20),
//                   const Text("Application Submitted", style: TextStyle(fontSize: 14),)
//                 ],
//               ),
//             const SizedBox(height: 30,),
//             Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.grey,
//                       width: 2,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(2.0),
//                     child: Checkbox(value: _isChecked, onChanged: (bool?value)
//                     {
//                       setState(() {
//                         _isChecked=value ?? false;
//                       });
//                     }),
//                   ),
//                 ),
//                 const SizedBox(height: 16,),
//                 const Text("Application pending Review" ,style: TextStyle(fontSize: 14),),
//               ],
//             ),
//             const SizedBox(height: 30,),
//             Row(
//               children: [
//                 Container(
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: Colors.grey,
//                       width: 2,
//                     ),
//                   ),
//                   child: Checkbox(value: _isChecked, onChanged: (bool?value)
//                   {
//                     setState(() {
//                       _isChecked=value ?? false;
//                     });
//                   }),
//                 ),
//                 const Text("Application approved"),
//               ],
//             ),
//             const SizedBox(height: 30,),
//             Row(
//               children: [
//                 Container(
//                   height: 2,
//                   width: 150,
//                   color: Colors.black,
//
//                 ),
//                 TextButton(onPressed: (){
//
//                 }, child: const Text("Date")),
//
//                 Container(
//                   height: 2,
//                   width: 150,
//                   color: Colors.black,
//
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16,),
//             const Text("Your application to be mentor is in progress.you will get a"
//                 " notification about the final update soon."),
//
//             const SizedBox(height: 30,),
//             const Text("Admin",style: TextStyle(fontWeight: FontWeight.bold),),
//             const SizedBox(height: 100,),
//             ElevatedButton(onPressed: (){
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) =>const MentorDashboard()),);
//             },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
//                 padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                   const EdgeInsets.symmetric(vertical: 20),
//                 ),
//                 shape: MaterialStateProperty.all<OutlinedBorder>(
//                   RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(0),
//                   ),
//                 ),
//               ),
//               child: const Center(
//                 child: Text("Start your journey"),
//               ),
//             ),
//
//         ],
//
//         ),
//       ),
//     );
//   }
// }
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

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'mentor_dashboard.dart';
//
// class ApplicationStatus extends StatefulWidget {
//   final username;
//
//   const ApplicationStatus({Key? key, required this.username}) : super(key: key);
//
//   @override
//   _ApplicationStatus createState() => _ApplicationStatus();
// }
//
// class _ApplicationStatus extends State<ApplicationStatus> {
//   bool _isChecked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getUserData(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const MaterialApp(
//             home: Scaffold(
//               body: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return const MaterialApp(
//             home: Scaffold(
//               body: Center(
//                 child: Text('Error loading data'),
//               ),
//             ),
//           );
//         } else {
//           var userData = snapshot.data;
//           if (userData != null) {
//             return MaterialApp(
//               debugShowCheckedModeBanner: false,
//               home: Scaffold(
//                 appBar: AppBar(
//                   toolbarHeight: 100,
//                   backgroundColor: const Color.fromARGB(255, 0, 180, 180),
//                   title: Row(
//                     children: [
//                       Column(
//                         children: [
//                           Text(
//                             'Hi, ${userData['firstName'] ?? 'User'}!',
//                             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           const Text(
//                             'Admin',
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   leading: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: CircleAvatar(
//                       radius: 80,
//                       backgroundImage: userData['profileImageUrl'] != null
//                           ? NetworkImage(userData['profileImageUrl']!)
//                           : const AssetImage('profileImageUrl') as ImageProvider<Object>,
//                     ),
//                   ),
//                 ),
//                 body: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text("Application status", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                         const SizedBox(height: 20),
//                         buildStatusRow("Application Submitted"),
//                         const SizedBox(height: 30),
//                         buildStatusRow("Application pending Review"),
//                         const SizedBox(height: 30),
//                         buildStatusRow("Application approved"),
//                         const SizedBox(height: 30),
//                         Row(
//                           children: [
//                             Container(
//                               height: 2,
//                               width: 150,
//                               color: Colors.black,
//                             ),
//                             TextButton(
//                               onPressed: () {},
//                               child: const Text("Date"),
//                             ),
//                             Container(
//                               height: 2,
//                               width: 150,
//                               color: Colors.black,
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 16),
//                         const Text("Your application to be a mentor is in progress. You will get a"
//                             " notification about the final update soon."),
//                         const SizedBox(height: 30),
//                         const Text("Admin", style: TextStyle(fontWeight: FontWeight.bold)),
//                         const SizedBox(height: 100),
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MentorDashboard()));
//                           },
//                           style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
//                             padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                               const EdgeInsets.symmetric(vertical: 20),
//                             ),
//                             shape: MaterialStateProperty.all<OutlinedBorder>(
//                               RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(0),
//                               ),
//                             ),
//                           ),
//                           child: const Center(
//                             child: Text("Start your journey"),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           } else {
//             return MaterialApp(
//               home: Scaffold(
//                 body: Center(
//                   child: Text('User data not available'),
//                 ),
//               ),
//             );
//           }
//         }
//       },
//     );
//   }
//
//   Widget buildStatusRow(String status) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Container(
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(
//               color: Colors.grey,
//               width: 2,
//             ),
//           ),
//           child: Checkbox(
//             value: _isChecked,
//             onChanged: (bool? value) {
//               setState(() {
//                 _isChecked = value ?? false;
//               });
//             },
//           ),
//         ),
//         const SizedBox(height: 20),
//         Text(status, style: TextStyle(fontSize: 14)),
//       ],
//     );
//   }
//
//   Future<Map<String, dynamic>> getUserData() async {
//     var userId = 'username';
//
//     var userDoc = await FirebaseFirestore.instance.collection('Mentors').doc(userId).get();
//
//     if (userDoc.exists) {
//       var userData = userDoc.data();
//
//       if (userData != null && userData['firstName'] != null && userData['profileImageUrl'] != null) {
//         if (userData['firstName'] is String && userData['profileImageUrl'] is String) {
//           return {
//             'firstName': userData['firstName'],
//             'profileImageUrl': userData['profileImageUrl'],
//           };
//         } else {
//           // Handle the case where 'firstName' or 'profileImageUrl' is not a String
//           return {}; // or throw an exception, depending on your requirements
//         }
//       } else {
//         // Handle the case where 'firstName' or 'profileImageUrl' is null
//         return {}; // or throw an exception, depending on your requirements
//       }
//     } else {
//       // Handle the case where the user document is not found
//       return {}; // or throw an exception, depending on your requirements
//     }
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'mentor_dashboard.dart';
//
// class ApplicationStatus extends StatefulWidget {
//   final username;
//
//   const ApplicationStatus({Key? key, required this.username}) : super(key: key);
//
//   @override
//   _ApplicationStatus createState() => _ApplicationStatus();
// }
//
// class _ApplicationStatus extends State<ApplicationStatus> {
//   bool _submittedChecked = false;
//   bool _pendingReviewChecked = false;
//   bool _approvedChecked = false;
//   DateTime? submissionDateTime;
//
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       future: getUserData(),
//       builder: (context, snapshot) {
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const MaterialApp(
//             home: Scaffold(
//               body: Center(
//                 child: CircularProgressIndicator(),
//               ),
//             ),
//           );
//         } else if (snapshot.hasError) {
//           return const MaterialApp(
//             home: Scaffold(
//               body: Center(
//                 child: Text('Error loading data'),
//               ),
//             ),
//           );
//         } else {
//           var userData = snapshot.data;
//           if (userData != null) {
//             return MaterialApp(
//               debugShowCheckedModeBanner: false,
//               home: Scaffold(
//                 appBar: AppBar(
//                   toolbarHeight: 100,
//                   backgroundColor: const Color.fromARGB(255, 0, 180, 180),
//                   title: Row(
//                     children: [
//                       Column(
//                         children: [
//                           Text(
//                             'Hi, ${userData['firstName'] ?? 'User'}!',
//                             style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           const Text(
//                             'Admin',
//                             style: TextStyle(fontSize: 14),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   leading: Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: CircleAvatar(
//                       radius: 80,
//                       backgroundImage: userData['profileImageUrl'] != null
//                           ? NetworkImage(userData['profileImageUrl']!)
//                           : const AssetImage('profileImageUrl') as ImageProvider<Object>,
//                     ),
//                   ),
//                 ),
//                 body: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text("Application status", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
//                         const SizedBox(height: 20),
//                         buildStatusRow("Application Submitted", _submittedChecked),
//                         const SizedBox(height: 30),
//                         buildStatusRow("Application Pending Review", _pendingReviewChecked),
//                         const SizedBox(height: 30),
//                         buildStatusRow("Application Approved", _approvedChecked),
//                         if ((_submittedChecked || _approvedChecked) && submissionDateTime != null)
//                           const SizedBox(height: 20,),
//
//                         const SizedBox(height: 16),
//                         const Text("Your application to be a mentor is in progress. You will get a"
//                             " notification about the final update soon."),
//                         const SizedBox(height: 16),
//                         const Text("Admin", style: TextStyle(fontWeight: FontWeight.bold)),
//                         const SizedBox(height: 100),
//                         ElevatedButton(
//                           onPressed: () {
//                             Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MentorDashboard()));
//                           },
//                           style: ButtonStyle(
//                             backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
//                             padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                               const EdgeInsets.symmetric(vertical: 20),
//                             ),
//                             shape: MaterialStateProperty.all<OutlinedBorder>(
//                               RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(0),
//                               ),
//                             ),
//                           ),
//                           child: const Center(
//                             child: Text("Start your journey"),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           } else {
//             return const MaterialApp(
//               home: Scaffold(
//                 body: Center(
//                   child: Text('User data not available'),
//                 ),
//               ),
//             );
//           }
//         }
//       },
//     );
//   }
//
//   Widget buildStatusRow(String status, bool isChecked) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 border: Border.all(
//                   color: Colors.grey,
//                   width: 2,
//                 ),
//               ),
//               child: Checkbox(
//                 value: isChecked,
//                 onChanged: (bool? value) {
//                   setState(() {
//                     _submittedChecked = false;
//                     _pendingReviewChecked = false;
//                     _approvedChecked = false;
//
//                     if (value != null) {
//                       if (status == "Application Submitted") {
//                         _submittedChecked = value;
//
//                         // Only update submissionDateTime if the checkbox is checked
//                         if (_submittedChecked) {
//                           submissionDateTime = DateTime.now();
//                         }
//                       } else if (status == "Application Pending Review") {
//                         _pendingReviewChecked = value;
//                       } else if (status == "Application Approved") {
//                         _approvedChecked = value;
//                       }
//                     }
//                   });
//                 },
//               ),
//             ),
//             const SizedBox(height: 20),
//             Text(status, style: TextStyle(fontSize: 14)),
//           ],
//         ),
//         if ((_submittedChecked || _approvedChecked) && submissionDateTime != null)
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24),
//             child: Row(
//               children: [
//                 Container(
//                   height: 2,
//                   width: 150,
//                   color: Colors.black,
//                 ),
//                 Expanded(
//                   child: TextButton(
//                     onPressed: () {},
//                     child: Text(
//                       "Date: ${submissionDateTime ?? 'Not Submitted'}",
//                       style: const TextStyle(fontSize: 12, color: Colors.grey),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   height: 2,
//                   width: 150,
//                   color: Colors.black,
//                 ),
//               ],
//             ),
//           ),
//       ],
//     );
//   }
//
//
//   Future<Map<String, dynamic>> getUserData() async {
//     var userId = 'username';
//
//     var userDoc = await FirebaseFirestore.instance.collection('Mentors').doc(userId).get();
//
//     if (userDoc.exists) {
//       var userData = userDoc.data();
//
//       if (userData != null && userData['firstName'] != null && userData['profileImageUrl'] != null) {
//         if (userData['firstName'] is String && userData['profileImageUrl'] is String) {
//           return {
//             'firstName': userData['firstName'],
//             'profileImageUrl': userData['profileImageUrl'],
//           };
//         } else {
//           return {}; // or throw an exception, depending on your requirements
//         }
//       } else {
//         // Handle the case where 'firstName' or 'profileImageUrl' is null
//         return {}; // or throw an exception, depending on your requirements
//       }
//     } else {
//       // Handle the case where the user document is not found
//       return {}; // or throw an exception, depending on your requirements
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';
import 'mentor_dashboard.dart';

class ApplicationStatus extends StatefulWidget {
  final username;

  const ApplicationStatus({Key? key, required this.username}) : super(key: key);

  @override
  _ApplicationStatus createState() => _ApplicationStatus();
}

class _ApplicationStatus extends State<ApplicationStatus> {
  bool _submittedChecked = false;
  bool _pendingReviewChecked = false;
  bool _approvedChecked = false;
  DateTime? submissionDateTime;

  // Function to format DateTime to a string
  String formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getUserData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          return const MaterialApp(
            home: Scaffold(
              body: Center(
                child: Text('Error loading data'),
              ),
            ),
          );
        } else {
          var userData = snapshot.data;
          if (userData != null) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Scaffold(
                appBar: AppBar(
                  toolbarHeight: 100,
                  backgroundColor: const Color.fromARGB(255, 0, 180, 180),
                  title: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Hi, ${userData['firstName'] ?? 'User'}!',
                            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Admin',
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: userData['profileImageUrl'] != null
                          ? NetworkImage(userData['profileImageUrl']!)
                          : const AssetImage('profileImageUrl') as ImageProvider<Object>,
                    ),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Application status", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                        const SizedBox(height: 20),
                        buildStatusRow("Application Submitted", _submittedChecked),
                        const SizedBox(height: 30),
                        buildStatusRow("Application Pending Review", _pendingReviewChecked),
                        const SizedBox(height: 30),
                        buildStatusRow("Application Approved", _approvedChecked),
                        if (_approvedChecked && submissionDateTime != null)

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 24),
                            child: Row(
                              children: [
                                Container(
                                  height: 2,
                                  width: 60,
                                  color: Colors.black,
                                ),
                                Expanded(
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Date: ${formatDateTime(submissionDateTime!)}",
                                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 2,
                                  width: 60,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ),
                        const SizedBox(height: 16),
                        const Text("Your application to be a mentor is in progress. You will get a"
                            " notification about the final update soon."),
                        const SizedBox(height: 16),
                        const Text("Admin", style: TextStyle(fontWeight: FontWeight.bold)),
                        const SizedBox(height: 100),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MentorDashboard()));
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromARGB(255, 0, 180, 180),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                              EdgeInsets.all(16.0), // Adjust the value as needed
                            ),
                            minimumSize: MaterialStateProperty.all<Size>(
                              Size(double.infinity, 0), // Set width to full width
                            ),
                          ),
                          child: const Text("Start your journey", style: TextStyle(color: Colors.white)),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: Text('User data not available'),
                ),
              ),
            );
          }
        }
      },
    );
  }

  Widget buildStatusRow(String status, bool isChecked) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
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
              child: Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _submittedChecked = false;
                    _pendingReviewChecked = false;
                    _approvedChecked = false;

                    if (value != null) {
                      if (status == "Application Submitted") {
                        _submittedChecked = value;

                        // Only update submissionDateTime if the checkbox is checked
                        if (_submittedChecked) {
                          submissionDateTime = DateTime.now();
                        }
                      } else if (status == "Application Pending Review") {
                        _pendingReviewChecked = value;
                      } else if (status == "Application Approved") {
                        _approvedChecked = value;

                        // Update submissionDateTime when the "Application Approved" checkbox is checked
                        if (_approvedChecked) {
                          submissionDateTime = DateTime.now();
                        }
                      }
                    }
                  });
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(status, style: TextStyle(fontSize: 14)),
          ],
        ),
      ],
    );
  }

  Future<Map<String, dynamic>> getUserData() async {
    var userId = 'username';

    var userDoc = await FirebaseFirestore.instance.collection('Mentors').doc(userId).get();

    if (userDoc.exists) {
      var userData = userDoc.data();

      if (userData != null && userData['firstName'] != null && userData['profileImageUrl'] != null) {
        if (userData['firstName'] is String && userData['profileImageUrl'] is String) {
          return {
            'firstName': userData['firstName'],
            'profileImageUrl': userData['profileImageUrl'],
          };
        } else {
          return {}; // or throw an exception, depending on your requirements
        }
      } else {
        // Handle the case where 'firstName' or 'profileImageUrl' is null
        return {}; // or throw an exception, depending on your requirements
      }
    } else {
      // Handle the case where the user document is not found
      return {}; // or throw an exception, depending on your requirements
    }
  }
}

