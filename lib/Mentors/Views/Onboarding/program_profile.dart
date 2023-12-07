// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:mms_project/Mentors/Onboarding/program_interest.dart';
// import 'package:provider/provider.dart';
// import 'dart:io';
//
// import '../../Providers/user_data_provider.dart';
//
// class ProgramProfile extends StatelessWidget {
//   const ProgramProfile({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 100,
//           backgroundColor: Color.fromARGB(255, 0, 180, 180),
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Mentor"),
//         ),
//         body: const Center(
//           child: ProfileContent(),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileContent extends StatefulWidget {
//   const ProfileContent({Key? key});
//
//   @override
//   _ProfileContentState createState() => _ProfileContentState();
// }
//
// class _ProfileContentState extends State<ProfileContent> {
//   File? pickedImageAsset;
//   bool isLoading = false;
//
//   Future<void> _pickImage() async {
//     setState(() {
//       isLoading = true;
//     });
//
//     try {
//       final pickedFile = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//       );
//       if (pickedFile != null) {
//         setState(() {
//           pickedImageAsset = File(pickedFile.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//     } finally {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: ListView(
//         padding: EdgeInsets.all(20),
//         children: [
//           const SizedBox(height: 16),
//           const Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//           const SizedBox(height: 16),
//           const Text("Fill in the form Below"),
//           const SizedBox(height: 16),
//           const Text("Set program Avatar"),
//           const SizedBox(height: 16),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundColor: Colors.grey,
//                     backgroundImage: pickedImageAsset != null
//                         ? FileImage(pickedImageAsset!) as ImageProvider<Object>?
//                         : const AssetImage('assets/default_profile_picture.png'),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20, width: 10,),
//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: _pickImage,
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//                     ),
//                     child: const Text('Pick Profile Picture'),
//                   ),
//                 ],
//               ),
//
//               const SizedBox(height: 20, width: 10,),
//               TextButton(onPressed: () {
//
//               }, child: const Text("Remove", style: TextStyle(color: Colors.black),)),
//             ],
//           ),
//           const SizedBox(height: 16,),
//           const Text('First name'),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Sunrise",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.firstName),
//             onChanged: (value) => userDataProvider.userData.firstName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Last name"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Jay",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.lastName),
//             onChanged: (value) => userDataProvider.userData.lastName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Bio"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Tell us about yourself',
//               contentPadding: EdgeInsets.symmetric(vertical: 50.0),
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.bio),
//             onChanged: (value) => userDataProvider.userData.bio = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Country"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Select a country",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.country),
//             onChanged: (value) => userDataProvider.userData.country = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("City"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Select a city",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.city),
//             onChanged: (value) => userDataProvider.userData.city = value,
//           ),
//
//           const SizedBox(height: 16,),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInterest()));
//             },
//             child: const Text("Next"),
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:provider/provider.dart';
// import 'dart:io';
//
// import '../../Providers/user_data_provider.dart';
// import 'program_interest.dart';
//
// class ProgramProfile extends StatelessWidget {
//   const ProgramProfile({Key? key, required String userId});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 100,
//           backgroundColor: Color.fromARGB(255, 0, 180, 180),
//           leading: IconButton(
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Mentor"),
//         ),
//         body: const Center(
//           child: ProfileContent(),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileContent extends StatefulWidget {
//   const ProfileContent({Key? key});
//
//   @override
//   _ProfileContentState createState() => _ProfileContentState();
// }
//
// class _ProfileContentState extends State<ProfileContent> {
//   File? pickedImageAsset;
//   bool isLoading = false;
//
//   Future<void> _pickImage() async {
//     setState(() {
//       isLoading = true;
//     });
//
//     try {
//       final pickedFile = await ImagePicker().pickImage(
//         source: ImageSource.gallery,
//       );
//       if (pickedFile != null) {
//         setState(() {
//           pickedImageAsset = File(pickedFile.path);
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//     } finally {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }
//
//   Future<void> _saveDataToFirestore() async {
//     var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);
//
//     try {
//       await FirebaseFirestore.instance.collection('Mentors').add({
//         'firstName': userDataProvider.userData.firstName,
//         'lastName': userDataProvider.userData.lastName,
//         'bio': userDataProvider.userData.bio,
//         'country': userDataProvider.userData.country,
//         'city': userDataProvider.userData.city,
//         'avatar':userDataProvider.userData.avatarUrl,
//       });
//
//       print('Data saved to Firestore successfully!');
//     } catch (e) {
//       print('Error saving data to Firestore: $e');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: ListView(
//         padding: EdgeInsets.all(20),
//         children: [
//           const SizedBox(height: 16),
//           const Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//           const SizedBox(height: 16),
//           const Text("Fill in the form Below"),
//           const SizedBox(height: 16),
//           const Text("Set program Avatar"),
//           const SizedBox(height: 16),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundColor: Colors.grey,
//                     backgroundImage: pickedImageAsset != null
//                         ? FileImage(pickedImageAsset!) as ImageProvider<Object>?
//                         : const AssetImage('assets/default_profile_picture.png'),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20, width: 10,),
//               Row(
//                 children: [
//                   ElevatedButton(
//                     onPressed: _pickImage,
//                     style: ButtonStyle(
//                       backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//                     ),
//                     child: const Text('Pick Profile Picture'),
//                   ),
//                 ],
//               ),
//
//               const SizedBox(height: 20, width: 10,),
//               TextButton(onPressed: () {
//
//               }, child: const Text("Remove", style: TextStyle(color: Colors.black),)),
//             ],
//           ),
//           const SizedBox(height: 16,),
//           const Text('First name'),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Sunrise",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.firstName),
//             onChanged: (value) => userDataProvider.userData.firstName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Last name"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Jay",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.lastName),
//             onChanged: (value) => userDataProvider.userData.lastName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Bio"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: 'Tell us about yourself',
//               contentPadding: EdgeInsets.symmetric(vertical: 50.0),
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.bio),
//             onChanged: (value) => userDataProvider.userData.bio = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Country"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Select a country",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.country),
//             onChanged: (value) => userDataProvider.userData.country = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("City"),
//           TextField(
//             decoration: InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Select a city",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.city),
//             onChanged: (value) => userDataProvider.userData.city = value,
//           ),
//
//           const SizedBox(height: 16,),
//           ElevatedButton(
//             onPressed: () async {
//               await _saveDataToFirestore();
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInterest()));
//             },
//             child: const Text("Next"),
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';
import 'dart:io';

import '../../../Providers/user_data_provider.dart';
import 'program_interest.dart';

class ProgramProfile extends StatelessWidget {
  final String userId;

  const ProgramProfile({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userDataProvider = Provider.of<UserDataProvider>(context);
    // Fetch user data based on the provided userId
    // For example, you can use a method like getUserDataById from your provider
    // userDataProvider.getUserDataById(userId);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Mentor"),
        ),
        body: Center(
          child: ProfileContent(userId: userId),
        ),
      ),
    );
  }
}

class ProfileContent extends StatefulWidget {
  final String userId;

  const ProfileContent({Key? key, required this.userId}) : super(key: key);

  @override
  _ProfileContentState createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  File? pickedImageAsset;
  bool isLoading = true;

  Future<void> _pickImage() async {
    setState(() {
      isLoading = true;
    });

    try {
      final pickedFile = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
      if (pickedFile != null) {
        setState(() {
          pickedImageAsset = File(pickedFile.path);
        });
      }
    } catch (e) {
      print('Error picking image: $e');
    } finally {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> updateUserInfo(String displayName) async {
    var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);

    try {
      User? user = FirebaseAuth.instance.currentUser;
      await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
        'firstName': userDataProvider.userData.firstName,
        'lastName': userDataProvider.userData.lastName,
        'bio': userDataProvider.userData.bio,
        'country': userDataProvider.userData.country,
        'city': userDataProvider.userData.city,
        'avatar': userDataProvider.userData.avatarUrl,

      });

      print('Data saved to Firestore successfully!');
    } catch (e) {
      print('Error saving data to Firestore: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    var userDataProvider = Provider.of<UserDataProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          const SizedBox(height: 16),
          const Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 16),
          const Text("Fill in the form Below"),
          const SizedBox(height: 16),
          const Text("Set program Avatar"),
          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey,
                    backgroundImage: pickedImageAsset != null
                        ? FileImage(pickedImageAsset!) as ImageProvider<Object>?
                        : const AssetImage('assets/default_profile_picture.png'),
                  ),
                ],
              ),
              const SizedBox(height: 20, width: 10,),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: _pickImage,
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
                    ),
                    child: const Text('Pick Profile Picture'),
                  ),
                ],
              ),

              const SizedBox(height: 20, width: 10,),
              TextButton(onPressed: () {

              }, child: const Text("Remove", style: TextStyle(color: Colors.black),)),
            ],
          ),
          const SizedBox(height: 16,),
          const Text('First name'),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Sunrise",
            ),
            controller: TextEditingController(text: userDataProvider.userData.firstName),
            onChanged: (value) => userDataProvider.userData.firstName = value,
          ),
          const SizedBox(height: 16,),
          const Text("Last name"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Jay",
            ),
            controller: TextEditingController(text: userDataProvider.userData.lastName),
            onChanged: (value) => userDataProvider.userData.lastName = value,
          ),
          const SizedBox(height: 16,),
          const Text("Bio"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Tell us about yourself',
              contentPadding: EdgeInsets.symmetric(vertical: 50.0),
            ),
            controller: TextEditingController(text: userDataProvider.userData.bio),
            onChanged: (value) => userDataProvider.userData.bio = value,
          ),
          const SizedBox(height: 16,),
          const Text("Country"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Select a country",
            ),
            controller: TextEditingController(text: userDataProvider.userData.country),
            onChanged: (value) => userDataProvider.userData.country = value,
          ),
          const SizedBox(height: 16,),
          const Text("City"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Select a city",
            ),
            controller: TextEditingController(text: userDataProvider.userData.city),
            onChanged: (value) => userDataProvider.userData.city = value,
          ),

          const SizedBox(height: 16,),
          ElevatedButton(
            onPressed: () async {
              await updateUserInfo(userDataProvider.userData.displayName); // Pass the required parameter
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInterest()));
            },
            child: const Text("Next"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
            ),
          ),
        ],
      ),
    );
  }
}











