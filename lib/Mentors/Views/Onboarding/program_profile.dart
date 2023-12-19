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

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:provider/provider.dart';
// import 'dart:io';
//
// import '../../../Providers/user_data_provider.dart';
// import 'program_interest.dart';
//
// class ProgramProfile extends StatelessWidget {
//   final String userId;
//
//   const ProgramProfile({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//     // Fetch user data based on the provided userId
//     // For example, you can use a method like getUserDataById from your provider
//     // userDataProvider.getUserDataById(userId);
//
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
//         body: Center(
//           child: ProfileContent(userId: userId),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileContent extends StatefulWidget {
//   final String userId;
//
//   const ProfileContent({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   _ProfileContentState createState() => _ProfileContentState();
// }
//
// class _ProfileContentState extends State<ProfileContent> {
//   File? pickedImageAsset;
//   bool isLoading = true;
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
//   Future<void> updateUserInfo(String displayName) async {
//     var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);
//
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
//         'firstName': userDataProvider.userData.firstName,
//         'lastName': userDataProvider.userData.lastName,
//         'bio': userDataProvider.userData.bio,
//         'country': userDataProvider.userData.country,
//         'city': userDataProvider.userData.city,
//         'avatar': userDataProvider.userData.avatarUrl,
//
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
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Sunrise",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.firstName),
//             onChanged: (value) => userDataProvider.userData.firstName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Last name"),
//           TextField(
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Jay",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.lastName),
//             onChanged: (value) => userDataProvider.userData.lastName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Bio"),
//           TextField(
//             decoration: const InputDecoration(
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
//               await updateUserInfo(userDataProvider.userData.displayName); // Pass the required parameter
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


// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:provider/provider.dart';
// import 'dart:io';
//
// import '../../../Providers/user_data_provider.dart';
// import 'program_interest.dart';
//
// class ProgramProfile extends StatelessWidget {
//   final String userId;
//
//   const ProgramProfile({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//
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
//         body: Center(
//           child: ProfileContent(userId: userId),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileContent extends StatefulWidget {
//   final String userId;
//
//   const ProfileContent({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   _ProfileContentState createState() => _ProfileContentState();
// }
//
// class _ProfileContentState extends State<ProfileContent> {
//   File? pickedImageAsset;
//   File? previousImageAsset;
//   bool isLoading = true;
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
//           previousImageAsset = pickedImageAsset;
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
//   Future<void> updateUserInfo(String displayName) async {
//     var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);
//
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
//         'firstName': userDataProvider.userData.firstName,
//         'lastName': userDataProvider.userData.lastName,
//         'bio': userDataProvider.userData.bio,
//         'country': userDataProvider.userData.country,
//         'city': userDataProvider.userData.city,
//         'avatar': userDataProvider.userData.avatarUrl,
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
//                         : previousImageAsset != null
//                         ? FileImage(previousImageAsset!) as ImageProvider<Object>?
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
//                 setState(() {
//                   pickedImageAsset = null;
//                   previousImageAsset = null;
//                 });
//               }, child: const Text("Remove", style: TextStyle(color: Colors.black),)),
//             ],
//           ),
//           const SizedBox(height: 16,),
//           const Text('First name'),
//           TextField(
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Sunrise",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.firstName),
//             onChanged: (value) => userDataProvider.userData.firstName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Last name"),
//           TextField(
//             decoration: const InputDecoration(
//               border: OutlineInputBorder(),
//               hintText: "Jay",
//             ),
//             controller: TextEditingController(text: userDataProvider.userData.lastName),
//             onChanged: (value) => userDataProvider.userData.lastName = value,
//           ),
//           const SizedBox(height: 16,),
//           const Text("Bio"),
//           TextField(
//             decoration: const InputDecoration(
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
//               await updateUserInfo(userDataProvider.userData.displayName);
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


// import 'dart:async';
// import 'dart:typed_data';
// import 'dart:ui' as ui;
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:provider/provider.dart';
// import 'dart:io';
//
// import '../../../Providers/user_data_provider.dart';
// import 'program_interest.dart';
//
// class ProgramProfile extends StatelessWidget {
//   final String userId;
//
//   const ProgramProfile({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//
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
//         body: Center(
//           child: ProfileContent(userId: userId),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileContent extends StatefulWidget {
//   final String userId;
//
//   const ProfileContent({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   _ProfileContentState createState() => _ProfileContentState();
// }
//
// class _ProfileContentState extends State<ProfileContent> {
//   File? pickedImageAsset;
//   File? previousImageAsset;
//   bool isLoading = true;
//   final GlobalKey _globalKey = GlobalKey();
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
//           previousImageAsset = pickedImageAsset;
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
//   Future<void> updateUserInfo(String displayName) async {
//     var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);
//
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
//         'firstName': userDataProvider.userData.firstName,
//         'lastName': userDataProvider.userData.lastName,
//         'bio': userDataProvider.userData.bio,
//         'country': userDataProvider.userData.country,
//         'city': userDataProvider.userData.city,
//         'avatar': userDataProvider.userData.avatarUrl,
//       });
//
//       print('Data saved to Firestore successfully!');
//     } catch (e) {
//       print('Error saving data to Firestore: $e');
//     }
//   }
//
//   Future<void> _captureAndSave() async {
//     try {
//       RenderRepaintBoundary boundary = _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//       ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//       ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//       Uint8List pngBytes = byteData?.buffer.asUint8List() ?? Uint8List(0);
//
//       // Save or upload the pngBytes as needed
//       // Replace this with your actual logic (e.g., Firebase Storage)
//       await saveImageToStorage(pngBytes);
//     } catch (e) {
//       print('Error capturing snapshot: $e');
//     }
//   }
//
//   Future<void> saveImageToStorage(Uint8List? imageBytes) async {
//     // Implement the code to save or upload the image to your desired storage solution
//     // Example using Firebase Storage:
//     String imagePath = 'avatars/${DateTime.now().millisecondsSinceEpoch}.png';
//      await FirebaseStorage.instance.ref(imagePath).putData(imageBytes!);
//      print('Image saved to storage: $imagePath');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: RepaintBoundary(
//         key: _globalKey,
//         child: ListView(
//           padding: EdgeInsets.all(20),
//           children: [
//             const SizedBox(height: 16),
//             const Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             const SizedBox(height: 16),
//             const Text("Fill in the form Below"),
//             const SizedBox(height: 16),
//             const Text("Set program Avatar"),
//             const SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.grey,
//                       backgroundImage: pickedImageAsset != null
//                           ? FileImage(pickedImageAsset!)
//                           : previousImageAsset != null
//                           ? FileImage(previousImageAsset!) as ImageProvider<Object>?
//                           : const AssetImage('assets/default_profile_picture.png'),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20, width: 10,),
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: _pickImage,
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//                       ),
//                       child: const Text('Pick Profile Picture'),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20, width: 10,),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       pickedImageAsset = null;
//                       previousImageAsset = null;
//                     });
//                   },
//                   child: const Text("Remove", style: TextStyle(color: Colors.black),),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16,),
//             const Text('First name'),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Sunrise",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.firstName),
//               onChanged: (value) => userDataProvider.userData.firstName = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("Last name"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Jay",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.lastName),
//               onChanged: (value) => userDataProvider.userData.lastName = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("Bio"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Tell us about yourself',
//                 contentPadding: EdgeInsets.symmetric(vertical: 50.0),
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.bio),
//               onChanged: (value) => userDataProvider.userData.bio = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("Country"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Select a country",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.country),
//               onChanged: (value) => userDataProvider.userData.country = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("City"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Select a city",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.city),
//               onChanged: (value) => userDataProvider.userData.city = value,
//             ),
//             const SizedBox(height: 16,),
//             ElevatedButton(
//               onPressed: () async {
//                 await updateUserInfo(userDataProvider.userData.displayName);
//                 _captureAndSave(); // Capture snapshot before navigating to the next screen
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInterest()));
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//               ),
//               child: const Text("Next"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// import 'dart:async';
// import 'dart:typed_data';
// import 'dart:ui' as ui;
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:provider/provider.dart';
// import 'dart:io';
//
// import '../../../Providers/user_data_provider.dart';
// import 'program_interest.dart';
//
// class ProgramProfile extends StatelessWidget {
//   final String userId;
//
//   const ProgramProfile({Key? key, required this.userId}) : super(key: key);
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
//           title: const Text("Mentor",style: TextStyle(color: Colors.white,),),
//         ),
//         body: Center(
//           child: ProfileContent(userId: userId),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileContent extends StatefulWidget {
//   final String userId;
//
//   const ProfileContent({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   _ProfileContentState createState() => _ProfileContentState();
// }
//
// class _ProfileContentState extends State<ProfileContent> {
//   File? pickedImageAsset;
//   File? previousImageAsset;
//   bool isLoading = true;
//   final GlobalKey _globalKey = GlobalKey();
//   Map<String, dynamic> userData = {};
//
//   @override
//   void initState() {
//     super.initState();
//     fetchUserData(widget.userId).then((data) {
//       setState(() {
//         userData = data;
//       });
//     });
//   }
//
//   Future<Map<String, dynamic>> fetchUserData(String userId) async {
//     try {
//       DocumentSnapshot userSnapshot = await FirebaseFirestore.instance.collection('Mentors').doc(userId).get();
//       return userSnapshot.data() as Map<String, dynamic>;
//     } catch (e) {
//       print('Error fetching user data: $e');
//       return {};
//     }
//   }
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
//           previousImageAsset = pickedImageAsset;
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
//   Future<void> updateUserInfo(String displayName) async {
//     var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);
//
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
//         'firstName': userDataProvider.userData.firstName,
//         'lastName': userDataProvider.userData.lastName,
//         'bio': userDataProvider.userData.bio,
//         'country': userDataProvider.userData.country,
//         'city': userDataProvider.userData.city,
//         'avatar': userDataProvider.userData.avatarUrl,
//       });
//
//       print('Data saved to Firestore successfully!');
//     } catch (e) {
//       print('Error saving data to Firestore: $e');
//     }
//   }
//
//   Future<void> _captureAndSave() async {
//     try {
//       RenderRepaintBoundary boundary = _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//       ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//       ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//       Uint8List pngBytes = byteData?.buffer.asUint8List() ?? Uint8List(0);
//
//       await saveImageToStorage(pngBytes);
//     } catch (e) {
//       print('Error capturing snapshot: $e');
//     }
//   }
//
//   Future<void> saveImageToStorage(Uint8List? imageBytes) async {
//     String imagePath = 'avatars/${DateTime.now().millisecondsSinceEpoch}.png';
//     await FirebaseStorage.instance.ref(imagePath).putData(imageBytes!);
//     print('Image saved to storage: $imagePath');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: RepaintBoundary(
//         key: _globalKey,
//         child: ListView(
//           padding: EdgeInsets.all(20),
//           children: [
//             const SizedBox(height: 16),
//             const Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             const SizedBox(height: 16),
//             const Text("Fill in the form Below"),
//             const SizedBox(height: 16),
//             const Text("Set program Avatar"),
//             const SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.grey,
//                       backgroundImage: pickedImageAsset != null
//                           ? FileImage(pickedImageAsset!)
//                           : previousImageAsset != null
//                           ? FileImage(previousImageAsset!) as ImageProvider<Object>?
//                           : const AssetImage('assets/default_profile_picture.png'),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20, width: 10,),
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: _pickImage,
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//                       ),
//                       child: const Text('Pick Profile Picture',style: TextStyle(color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20, width: 10,),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       pickedImageAsset = null;
//                       previousImageAsset = null;
//                     });
//                   },
//                   child: const Text("Remove", style: TextStyle(color: Colors.black),),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16,),
//             const Text('First name'),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Sunrise",
//               ),
//               controller: TextEditingController(text: userData['firstName'] ?? ''),
//               onChanged: (value) => userData['firstName'] = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("Last name"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Jay",
//               ),
//               controller: TextEditingController(text: userData['lastName'] ?? ''),
//               onChanged: (value) => userData['lastName'] = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("Bio"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Tell us about yourself',
//                 contentPadding: EdgeInsets.symmetric(vertical: 50.0),
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.bio),
//               onChanged: (value) => userDataProvider.userData.bio = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("Country"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Select a country",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.country),
//               onChanged: (value) => userDataProvider.userData.country = value,
//             ),
//             const SizedBox(height: 16,),
//             const Text("City"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Select a city",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.city),
//               onChanged: (value) => userDataProvider.userData.city = value,
//             ),
//             const SizedBox(height: 16,),
//             ElevatedButton(
//               onPressed: () async {
//                 await updateUserInfo(userDataProvider.userData.displayName);
//                 _captureAndSave(); // Capture snapshot before navigating to the next screen
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInterest()));
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//               ),
//               child: const Text("Next",style: TextStyle(color: Colors.white),),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// program_profile.dart


// import 'package:path/path.dart' as path;
// import 'package:firebase_storage/firebase_storage.dart';
//
// import 'dart:async';
// import 'dart:typed_data';
// import 'dart:ui' as ui;
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:path/path.dart';
// import 'package:provider/provider.dart';
// import 'dart:io';
//
// import '../../../Providers/user_data_provider.dart';
// import 'program_interest.dart';
//
// class ProgramProfile extends StatelessWidget {
//   final String userId;
//
//   const ProgramProfile({Key? key, required this.userId}) : super(key: key);
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
//           title: const Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 "Mentor",
//                 style: TextStyle(color: Colors.white),
//               ),
//               SizedBox(width: 16), // Adjust the width as needed
//             ],
//           ),
//         ),
//         body: Center(
//           child: ProfileContent(userId: userId),
//         ),
//       ),
//     );
//   }
// }
//
// class ProfileContent extends StatefulWidget {
//   final String userId;
//
//   const ProfileContent({Key? key, required this.userId}) : super(key: key);
//
//   @override
//   _ProfileContentState createState() => _ProfileContentState();
// }
//
// class _ProfileContentState extends State<ProfileContent> {
//   File? pickedImageAsset;
//   File? previousImageAsset;
//   bool isLoading = true;
//   final GlobalKey _globalKey = GlobalKey();
//   Map<String, dynamic> userData = {};
//
//   @override
//   void initState() {
//     super.initState();
//     getUserData(widget.userId).then((data) {
//       setState(() {
//         userData = data;
//       });
//     });
//   }
//
//   Future<Map<String, dynamic>> getUserData(String userId) async {
//     try {
//       DocumentSnapshot userSnapshot = await FirebaseFirestore.instance.collection('Mentors').doc(userId).get();
//       return {
//         'firstName': userSnapshot['firstName'],
//         'lastName': userSnapshot['lastName'],
//         'email':userSnapshot['email'],
//
//       };
//     } catch (e) {
//       print('Error fetching user data: $e');
//       return {};
//     }
//   }
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
//           previousImageAsset = pickedImageAsset;
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
//   Future<void> updateUserInfo(BuildContext context, String displayName) async {
//     var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);
//
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//
//       // Upload image to storage and get the URL
//       String avatarUrl = await saveImageToStorage(userDataProvider.userData.avatarBytes);
//
//       await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
//         'firstName': userDataProvider.userData.firstName,
//         'lastName': userDataProvider.userData.lastName,
//         'bio': userDataProvider.userData.bio,
//         'country': userDataProvider.userData.country,
//         'city': userDataProvider.userData.city,
//         'avatar': avatarUrl,
//       });
//
//       // Update the local userData map with the latest values
//       setState(() {
//         userData['firstName'] = userDataProvider.userData.firstName;
//         userData['lastName'] = userDataProvider.userData.lastName;
//       });
//
//       print('Data saved to Firestore successfully!');
//     } catch (e) {
//       print('Error saving data to Firestore: $e');
//     }
//   }
//
//
//   Future<String> saveImageToStorage(Uint8List? imageBytes) async {
//     String imagePath = 'avatars/${DateTime.now().millisecondsSinceEpoch}.png';
//     await FirebaseStorage.instance.ref(imagePath).putData(imageBytes!);
//     print('Image saved to storage: $imagePath');
//     return imagePath;
//   }
//
//   Future<void> _captureAndSave() async {
//     try {
//       RenderRepaintBoundary boundary = _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
//       ui.Image image = await boundary.toImage(pixelRatio: 3.0);
//       ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
//       Uint8List pngBytes = byteData?.buffer.asUint8List() ?? Uint8List(0);
//
//       await saveImageToStorage(pngBytes);
//     } catch (e) {
//       print('Error capturing snapshot: $e');
//     }
//   }
//
//   Future<String> uploadImageToFirebaseStorage(String imagePath) async {
//     File file = File(imagePath); // Assuming imagePath is the path to the user-selected image
//     String fileName = basename(file.path);
//
//     Reference storageReference = FirebaseStorage.instance.ref().child('profileImages/$fileName');
//     UploadTask uploadTask = storageReference.putFile(file);
//     TaskSnapshot snapshot = await uploadTask;
//
//     if (snapshot.state == TaskState.success) {
//       final String downloadUrl = await snapshot.ref.getDownloadURL();
//       return downloadUrl; // Returns the URL of the uploaded image
//     } else {
//       return ''; // Return an empty string or handle failure as needed
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var userDataProvider = Provider.of<UserDataProvider>(context);
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: RepaintBoundary(
//         key: _globalKey,
//         child: ListView(
//           padding: EdgeInsets.all(20),
//           children: [
//             const SizedBox(height: 16),
//             const Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             const SizedBox(height: 16),
//             const Text("Fill in the form Below"),
//             const SizedBox(height: 16),
//             const Text("Set program Avatar"),
//             const SizedBox(height: 16),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.grey,
//                       backgroundImage: pickedImageAsset != null
//                           ? FileImage(pickedImageAsset!)
//                           : previousImageAsset != null
//                           ? FileImage(previousImageAsset!) as ImageProvider<Object>?
//                           : const AssetImage('assets/default_profile_picture.png'),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20, width: 10),
//                 Row(
//                   children: [
//                     ElevatedButton(
//                       onPressed: _pickImage,
//                       style: ButtonStyle(
//                         backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//                       ),
//                       child: const Text('Pick Profile Picture', style: TextStyle(color: Colors.white)),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 20, width: 10),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       pickedImageAsset = null;
//                       previousImageAsset = null;
//                     });
//                   },
//                   child: const Text("Remove", style: TextStyle(color: Colors.black)),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             const Text('First name'),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Sunrise",
//               ),
//               controller: TextEditingController(text: userData['firstName'] ?? ''),
//               onChanged: (value) {
//                 setState(() {
//                   userData['firstName'] = value;
//                 });
//               },
//             ),
//             const SizedBox(height: 16),
//             const Text("Last name"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Jay",
//               ),
//               controller: TextEditingController(text: userData['lastName'] ?? ''),
//               onChanged: (value) {
//                 setState(() {
//                   userData['lastName'] = value;
//                 });
//               },
//             ),
//             const SizedBox(height: 16),
//             const Text("Bio"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: 'Tell us about yourself',
//                 contentPadding: EdgeInsets.symmetric(vertical: 50.0),
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.bio),
//               onChanged: (value) => userDataProvider.userData.bio = value,
//             ),
//             const SizedBox(height: 16),
//             const Text("Country"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Select a country",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.country),
//               onChanged: (value) => userDataProvider.userData.country = value,
//             ),
//             const SizedBox(height: 16),
//             const Text("City"),
//             TextField(
//               decoration: const InputDecoration(
//                 border: OutlineInputBorder(),
//                 hintText: "Select a city",
//               ),
//               controller: TextEditingController(text: userDataProvider.userData.city),
//               onChanged: (value) => userDataProvider.userData.city = value,
//             ),
//             const SizedBox(height: 16),
//             ElevatedButton(
//               onPressed: () async {
//                 await updateUserInfo(userDataProvider.userData.displayName);
//                 _captureAndSave(); // Capture snapshot before navigating to the next screen
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProgramInterest()));
//               },
//               style: ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
//               ),
//               child: const Text("Next", style: TextStyle(color: Colors.white)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart' as path;
import 'package:provider/provider.dart';
import 'dart:io';

import '../../../Providers/user_data_provider.dart';
import 'program_interest.dart';

class ProgramProfile extends StatelessWidget {
  final String userId;

  const ProgramProfile({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Mentor",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 16),
            ],
          ),
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
  File? pickedImageFile;
  File? previousImageFile;
  bool isLoading = true;
  final GlobalKey _globalKey = GlobalKey();
  Map<String, dynamic> userData = {};

  @override
  void initState() {
    super.initState();
    getUserData(widget.userId).then((data) {
      setState(() {
        userData = data;
      });
    });
  }

  Future<Map<String, dynamic>> getUserData(String userId) async {
    try {
      DocumentSnapshot userSnapshot = await FirebaseFirestore.instance.collection('Mentors').doc(userId).get();
      return {
        'firstName': userSnapshot['firstName'],
        'lastName': userSnapshot['lastName'],
        'email': userSnapshot['email'],
      };
    } catch (e) {
      print('Error fetching user data: $e');
      return {};
    }
  }

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
          previousImageFile = pickedImageFile;
          pickedImageFile = File(pickedFile.path);
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

  Future<void> updateUserInfo(BuildContext context, String displayName) async {
    var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);

    try {
      User? user = FirebaseAuth.instance.currentUser;

      // Upload image to storage and get the URL
      String avatarUrl = await saveImageToStorage(userDataProvider.userData.avatarBytes);

      await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
        'firstName': userDataProvider.userData.firstName,
        'lastName': userDataProvider.userData.lastName,
        'bio': userDataProvider.userData.bio,
        'country': userDataProvider.userData.country,
        'city': userDataProvider.userData.city,
        'avatar': avatarUrl,
      });

      // Update the local userData map with the latest values
      setState(() {
        userData['firstName'] = userDataProvider.userData.firstName;
        userData['lastName'] = userDataProvider.userData.lastName;
      });

      print('Data saved to Firestore successfully!');
    } catch (e) {
      print('Error saving data to Firestore: $e');
    }
  }

  Future<String> saveImageToStorage(Uint8List? imageBytes) async {
    String imagePath = 'avatars/${DateTime.now().millisecondsSinceEpoch}.png';
    await FirebaseStorage.instance.ref(imagePath).putData(imageBytes!);
    print('Image saved to storage: $imagePath');
    return imagePath;
  }

  Future<void> _captureAndSave() async {
    try {
      RenderRepaintBoundary boundary = _globalKey.currentContext!.findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData?.buffer.asUint8List() ?? Uint8List(0);

      String imagePath = await saveImageToStorage(pngBytes);
      print('Image saved to storage: $imagePath');
      // Handle imagePath as needed
    } catch (e) {
      print('Error capturing snapshot: $e');
    }
  }

  Future<String> uploadImageToFirebaseStorage(String imagePath) async {
    File file = File(imagePath); // Assuming imagePath is the path to the user-selected image
    String fileName = path.basename(file.path);

    Reference storageReference = FirebaseStorage.instance.ref().child('profileImages/$fileName');
    UploadTask uploadTask = storageReference.putFile(file);
    TaskSnapshot snapshot = await uploadTask;

    if (snapshot.state == TaskState.success) {
      final String downloadUrl = await snapshot.ref.getDownloadURL();
      return downloadUrl; // Returns the URL of the uploaded image
    } else {
      return ''; // Return an empty string or handle failure as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    var userDataProvider = Provider.of<UserDataProvider>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: RepaintBoundary(
        key: _globalKey,
        child: ListView(
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
                      backgroundImage: pickedImageFile != null
                          ? FileImage(pickedImageFile!)
                          : previousImageFile != null
                          ? FileImage(previousImageFile!) as ImageProvider<Object>?
                          : const AssetImage(''),
                    ),
                  ],
                ),
                const SizedBox(height: 20, width: 10),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: _pickImage,
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
                      ),
                      child: const Text('Pick Profile Picture', style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
                const SizedBox(height: 20, width: 10),
                TextButton(
                  onPressed: () {
                    setState(() {
                      pickedImageFile = null;
                      previousImageFile = null;
                    });
                  },
                  child: const Text("Remove", style: TextStyle(color: Colors.black)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('First name'),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Sunrise",
              ),
              controller: TextEditingController(text: userData['firstName'] ?? ''),
              onChanged: (value) {
                setState(() {
                  userData['firstName'] = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text("Last name"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Jay",
              ),
              controller: TextEditingController(text: userData['lastName'] ?? ''),
              onChanged: (value) {
                setState(() {
                  userData['lastName'] = value;
                });
              },
            ),
            const SizedBox(height: 16),
            const Text("Bio"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Tell us about yourself',
                contentPadding: EdgeInsets.symmetric(vertical: 50.0),
              ),
              controller: TextEditingController(text: userDataProvider.userData.bio),
              onChanged: (value) => userDataProvider.userData.bio = value,
            ),
            const SizedBox(height: 16),
            const Text("Country"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Select a country",
              ),
              controller: TextEditingController(text: userDataProvider.userData.country),
              onChanged: (value) => userDataProvider.userData.country = value,
            ),
            const SizedBox(height: 16),
            const Text("City"),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Select a city",
              ),
              controller: TextEditingController(text: userDataProvider.userData.city),
              onChanged: (value) => userDataProvider.userData.city = value,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                await updateUserInfo(context, userDataProvider.userData.displayName);
                _captureAndSave(); // Capture snapshot before navigating to the next screen
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const ProgramInterest()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
              ),
              child: const Text("Next", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}











