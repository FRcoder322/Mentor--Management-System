// import 'package:flutter/material.dart';
//
//
// class MentorDashboard extends StatelessWidget {
//   const MentorDashboard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 100,
//           backgroundColor: const Color.fromARGB(255, 161, 139, 164),
//           title:  Row(
//             children: [
//              Column(
//               children: [
//                 TextButton(onPressed: (){
//
//                 }, child: Text("Hi Sandy")),
//                 Text("Admin"),
//               ],
//               ),
//
//               const Spacer(),
//               IconButton(
//                 icon: const Icon(Icons.search),
//                 onPressed: () {
//                 },
//               ),
//               IconButton(
//                 icon: const Icon(Icons.notifications),
//                 onPressed: () {
//
//                 },
//               ),
//             ],
//           ),
//             leading: const Padding(
//               padding: EdgeInsets.all(16.0),
//               child: CircleAvatar(
//                 radius: 10,
//                 backgroundImage: NetworkImage('https://example.com/profile.jpg'),
//               ),
//
//             ),
//
//         ),
//
//         body: Center(
//           child: ListView(
//             padding:  const EdgeInsets.all(16),
//             children:  [
//               SizedBox(height: 16,),
//               TextField(
//                 decoration: const InputDecoration(
//                   suffixIcon: Icon(Icons.arrow_drop_down),
//                   labelText: "This week",
//                   border: OutlineInputBorder(),
//
//                 ),
//                 onTap: () {
//                   // Implement dropdown functionality here
//                   // For example, show a dropdown menu when the user taps the TextField
//                 },
//               ),
//               const SizedBox(height: 30,),
//               Card(
//                 child: Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: SizedBox(
//                     height: 200,
//                     child: Row(
//
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         TextButton(onPressed: (){
//
//                         }, child: const Text("Active programs")),
//                         const Spacer(),
//                         ElevatedButton(onPressed: (){
//
//                         }, child: const Text("View")),
//                       ],
//                     ),
//
//                   ),
//
//                 ),
//               ),
//
//               const SizedBox(height: 8,),
//               const ListTile(
//                 contentPadding: EdgeInsets.all(5),
//               ),
//               const Text("Ongoing tasks"),
//               const Card(
//                 child: Padding(
//                   padding: EdgeInsets.all(25),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         height: 200,),
//                       Text("You currently don't  have any\n ongoing project ",)
//                     ],
//                   ),
//                 ),
//               ),
//
//               const ListTile(
//                 contentPadding: EdgeInsets.all(5),
//               ),
//               const Text("Reports overview"),
//               const SizedBox(height: 10,),
//                const Card(
//                 child: Padding(
//                   padding: EdgeInsets.all(25),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         height: 200,
//                       ),
//                       Text("You currently don't have any reports recorded"),
//
//                     ],
//                   ),
//                 ),
//               ),
//               const ListTile(
//                 contentPadding: EdgeInsets.all(5),
//               ),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   TextButton(onPressed: (){
//
//                   }, child: const Text("Task overview")),
//                   const Spacer(),
//                   ElevatedButton(onPressed: (){
//
//                   }, child: const Text("View all")),
//                 ],
//               ),
//               const Card(
//                 child: Padding(
//                   padding: EdgeInsets.all(25.0),
//                   child: SizedBox(
//                     height: 200,
//                     child: Column(
//                       children: [
//                         ListTile(
//                           contentPadding: EdgeInsets.all(16),
//                             ),
//                           Text("You currently don't have any \n task overview recorded"),
//                       ],
//                     ),
//                   ),
//
//                 ),
//
//               ),
//             ],
//           ),
//
//
//       ),
//         bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Colors.teal,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.dashboard),
//               label: 'Dashboard',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.apps),
//               label: 'Programs',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.assignment),
//               label: 'Tasks',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.message),
//               label: 'Messages',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.more_horiz),
//               label: 'More',
//             ),
//           ],
//         ),
//     ),
//     );
//   }
// }
//
// class ResponsiveIcon extends StatefulWidgetWidget {
//   late final IconData icon;
//   late final String label;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Icon(icon, size: 40.0),
//         const SizedBox(height: 8.0),
//         Text(label, style: const TextStyle(color: Colors.black)),
//       ],
//     );
//   }
// }
//
// class StatefulWidgetWidget {
//
// }
// import 'package:flutter/material.dart';
// //
// // class MentorDashboard extends StatelessWidget {
// //   const MentorDashboard({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: Scaffold(
// //         appBar: AppBar(
// //           toolbarHeight: 100,
// //           backgroundColor: const Color.fromARGB(255, 161, 139, 164),
// //           title: Row(
// //             children: [
// //               Column(
// //                 children: [
// //                   TextButton(
// //                     onPressed: () {},
// //                     child: const Text("Hi Sandy"),
// //                   ),
// //                   const Text("Admin"),
// //                 ],
// //               ),
// //               const Spacer(),
// //               IconButton(
// //                 icon: const Icon(Icons.search),
// //                 onPressed: () {},
// //               ),
// //               IconButton(
// //                 icon: const Icon(Icons.notifications),
// //                 onPressed: () {},
// //               ),
// //             ],
// //           ),
// //           leading: const Padding(
// //             padding: EdgeInsets.all(16.0),
// //             child: CircleAvatar(
// //               radius: 10,
// //               backgroundImage: NetworkImage(''),
// //             ),
// //           ),
// //         ),
// //         body: Center(
// //           child: ListView(
// //             padding: const EdgeInsets.all(16),
// //             children: [
// //               const SizedBox(height: 16),
// //               TextField(
// //                 decoration: const InputDecoration(
// //                   suffixIcon: Icon(Icons.arrow_drop_down),
// //                   labelText: "This week",
// //                   border: OutlineInputBorder(),
// //                 ),
// //                 onTap: () {
// //                   // Implement dropdown functionality here
// //                   // For example, show a dropdown menu when the user taps the TextField
// //                 },
// //               ),
// //               const SizedBox(height: 30),
// //               Card(
// //                 child: Padding(
// //                   padding: const EdgeInsets.all(25.0),
// //                   child: SizedBox(
// //                     height: 200,
// //                     child: Row(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         TextButton(
// //                           onPressed: () {},
// //                           child: const Text("Active programs"),
// //                         ),
// //                         const Spacer(),
// //                         ElevatedButton(
// //                           onPressed: () {},
// //                           child: const Text("View"),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 8),
// //               const ListTile(
// //                 contentPadding: EdgeInsets.all(5),
// //               ),
// //               const Text("Ongoing tasks"),
// //               const Card(
// //                 child: Padding(
// //                   padding: EdgeInsets.all(25),
// //                   child: Row(
// //                     children: [
// //                       SizedBox(
// //                         height: 200,
// //                       ),
// //                       Text(
// //                         "You currently don't have any\n ongoing project ",
// //                       )
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               const ListTile(
// //                 contentPadding: EdgeInsets.all(5),
// //               ),
// //               const Text("Reports overview"),
// //               const SizedBox(height: 10),
// //               const Card(
// //                 child: Padding(
// //                   padding: EdgeInsets.all(25),
// //                   child: Row(
// //                     children: [
// //                       SizedBox(
// //                         height: 200,
// //                       ),
// //                       Text("You currently don't have any reports recorded"),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               const ListTile(
// //                 contentPadding: EdgeInsets.all(5),
// //               ),
// //               Row(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   TextButton(
// //                     onPressed: () {},
// //                     child: const Text("Task overview"),
// //                   ),
// //                   const Spacer(),
// //                   ElevatedButton(
// //                     onPressed: () {},
// //                     child: const Text("View all"),
// //                   ),
// //                 ],
// //               ),
// //               const Card(
// //                 child: Padding(
// //                   padding: EdgeInsets.all(25.0),
// //                   child: SizedBox(
// //                     height: 200,
// //                     child: Column(
// //                       children: [
// //                         ListTile(
// //                           contentPadding: EdgeInsets.all(16),
// //                         ),
// //                         Text("You currently don't have any \n task overview recorded"),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //         bottomNavigationBar: BottomNavigationBar(
// //           backgroundColor: Colors.teal,
// //           items: const [
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.dashboard),
// //               label: 'Dashboard',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.apps),
// //               label: 'Programs',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.assignment),
// //               label: 'Tasks',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.message),
// //               label: 'Messages',
// //             ),
// //             BottomNavigationBarItem(
// //               icon: Icon(Icons.more_horiz),
// //               label: 'More',
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
import 'package:flutter/material.dart';

import '../More/Reports/Programs-Report/program_reports.dart';
import '../Programs/programs.dart';
import '../Tasks/mentor_tasks.dart';

class MentorDashboard extends StatelessWidget {

  const MentorDashboard({Key? key,}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.teal,
          title: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Hi, Sandy"),
                    ),
                    const Text("Admin"),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
          ),
          leading: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(''),
            ),
          ),
        ),

        body: Center(
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              const SizedBox(height: 16),
              TextField(
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.arrow_drop_down),
                  labelText: "This week",
                  border: OutlineInputBorder(),
                ),
                onTap: () {
                  // Implement dropdown functionality here
                  // For example, show a dropdown menu when the user taps the TextField
                },
              ),
              const SizedBox(height: 30),
              Card(
                color: Colors.teal,
               shape:RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20.0),
               ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 150,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text("Active programs",style: TextStyle(color: Colors.white),),
                        ),
                        const Spacer(),
                        TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.teal), // Set the desired background color
                          ),

                          onPressed: () {},
                          child: const Text("View",style: TextStyle(color: Colors.white),),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              const ListTile(
                contentPadding: EdgeInsets.all(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Ongoing tasks",style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(16),
                        ),
                        Text("You currently don't have any \n ongoing project"),
                      ],
                    ),
                  ),
                ),
              ),

              const ListTile(
                contentPadding: EdgeInsets.all(5),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Report overview",style: TextStyle(color: Colors.black),),
                  ),
                ],
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(16),
                        ),
                        Text("You currently don't have any \n report recorded"),
                      ],
                    ),
                  ),
                ),
              ),

              const ListTile(
                contentPadding: EdgeInsets.all(5),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Task overview",style: TextStyle(color: Colors.black),),
                  ),
                  const Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: const Text("View all"),
                  ),
                ],
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(25.0),
                  child: SizedBox(
                    height: 150,
                    child: Column(
                      children: [
                        ListTile(
                          contentPadding: EdgeInsets.all(16),
                        ),
                        Text("You currently don't have any \n task overview recorded"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Programs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
          onTap: (int index) {
            // Handle navigation based on the tapped index
             switch (index) {
              case 0:
              // Navigate to Dashboard page
               Navigator.push(context, MaterialPageRoute(builder: (context) => const MentorDashboard()));
                break;
              case 1:
              // Navigate to Programs page
               Navigator.push(context, MaterialPageRoute(builder: (context) => const Programs()));
                break;
              case 2:
              // Navigate to Tasks page
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MentorTasks()));
                break;
              case 3:
              // Navigate to Messages page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesPage()));
                break;
              case 4:
              // Navigate to More page
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProgramReports()));
                break;
            }
          },
        ),
      ),
    );
  }
}


















