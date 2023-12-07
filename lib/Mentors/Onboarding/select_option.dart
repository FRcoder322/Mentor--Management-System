// import 'package:flutter/material.dart';
// import 'package:mms_project/Mentors/Onboarding/register.dart';
//
//
// class SelectOption extends StatefulWidget {
//
//
//   const SelectOption({Key? key, }):super(key: key);
//
//   @override
//   State<SelectOption> createState() => _SelectOptionState();
// }
//
// class _SelectOptionState extends State<SelectOption> {
//
//   @override
//   Widget build(BuildContext context) {
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: const Color.fromARGB(187, 252, 248, 252),
//         appBar: AppBar(
//           toolbarHeight: 100,
//           backgroundColor: Color.fromARGB(255, 0, 180, 180),
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Select Registration Option"),
//         ),
//         body: Container(
//
//           margin: const EdgeInsets.all(16.0),
//           alignment: Alignment.center,
//           child: Column(
//
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 16),
//               const Text(
//                 "Join the Team",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
//               ),
//               const SizedBox(height: 16),
//               const Text(
//                 "Select the best option that best suits your interest on MMS to continue",
//                 style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0),
//                 softWrap: true,
//               ),
//               const SizedBox(height: 16),
//               const Text(
//                 "REGISTER As A:",
//                 style: TextStyle(fontSize: 16,),
//               ),
//               const SizedBox(height: 20),
//               Container(
//                 decoration: BoxDecoration(
//
//                   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.10),
//                       spreadRadius: 5,
//                       blurRadius: 15,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//
//
//                 child: Row(
//
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     const Icon(Icons.person, color:  Color.fromARGB(255, 0, 180, 180), size: 60),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Learner", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
//                         Text("To match Mentors and learners "),
//                         Text("based on their skills"),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     TextButton(
//                       onPressed: () {
//
//                       },
//                       child: const Text('>',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.bold),),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//
//                 decoration: BoxDecoration(
//
//                   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.blueGrey.withOpacity(0.10), // Shadow color
//                       spreadRadius: 5, // Spread radius of the shadow
//                       blurRadius: 45, // Blur radius of the shadow
//                       offset: Offset(0, 3), // Offset of the shadow
//                     ),
//                   ],
//                 ),
//
//                 child: Row(
//
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     const Icon(Icons.person, color:  Color.fromARGB(255, 0, 180, 180), size: 60),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Mentor", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
//                         Text("Oversee and guide learners       "),
//                         Text("from start to finish")
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.of(context).push(MaterialPageRoute(
//                             builder: (context) =>  const Registration(username: UserNameController.text,)));
//                       },
//                       child: const Text('>',style: TextStyle(color:Colors.black,fontSize:20,fontWeight: FontWeight.bold),),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               Container(
//
//                 decoration: BoxDecoration(
//
//                   borderRadius: const BorderRadius.all(Radius.circular(8.0)),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.blueGrey.withOpacity(0.10), // Shadow color
//                       spreadRadius: 5, // Spread radius of the shadow
//                       blurRadius: 45, // Blur radius of the shadow
//                       offset: Offset(0, 3), // Offset of the shadow
//                     ),
//                   ],
//                 ),
//
//
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     const Icon(Icons.person, color: Color.fromARGB(255, 0, 180, 180), size: 60),
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Mentor Manager", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
//                         Text("Manage mentors and learners   "),
//                         Text("across all learning tracks"),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//                     TextButton(
//                       onPressed: () {
//
//                       },
//                       child: const Text('>', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/register.dart';

class SelectOption extends StatefulWidget {
  const SelectOption({Key? key, required String userId}) : super(key: key);

  @override
  State<SelectOption> createState() => _SelectOptionState();
}

class _SelectOptionState extends State<SelectOption> {
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(187, 252, 248, 252),
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Select Registration Option"),
        ),
        body: Container(
          margin: const EdgeInsets.all(16.0),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              const Text(
                "Join the Team",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
              ),
              const SizedBox(height: 16),
              const Text(
                "Select the best option that best suits your interest on MMS to continue",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16.0),
                softWrap: true,
              ),
              const SizedBox(height: 16),
              const Text(
                "REGISTER As A:",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.10),
                      spreadRadius: 5,
                      blurRadius: 15,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.person, color: Color.fromARGB(255, 0, 180, 180), size: 60),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Learner", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("To match Mentors and learners "),
                        Text("based on their skills"),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {},
                      child: const Text('>', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.10),
                      spreadRadius: 5,
                      blurRadius: 45,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.person, color: Color.fromARGB(255, 0, 180, 180), size: 60),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mentor", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Oversee and guide learners"),
                        Text("from start to finish"),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        // Get the entered username
                        String enteredUsername = userNameController.text;
                        // Navigate to the Registration page and pass the username
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Registration(username: enteredUsername),
                        ));
                      },
                      child: const Text('>', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blueGrey.withOpacity(0.10),
                      spreadRadius: 5,
                      blurRadius: 45,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.person, color: Color.fromARGB(255, 0, 180, 180), size: 60),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mentor Manager", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        Text("Manage mentors and learners"),
                        Text("across all learning tracks"),
                      ],
                    ),
                    const SizedBox(height: 16),
                    TextButton(
                      onPressed: () {},
                      child: const Text('>', style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}




