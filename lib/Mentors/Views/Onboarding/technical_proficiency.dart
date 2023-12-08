// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:mms_project/Mentors/Views/Onboarding/upload_documents.dart';
//
// class TechnicalProficiency extends StatelessWidget {
//   const TechnicalProficiency({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 100,
//           backgroundColor: const Color.fromARGB(255, 0, 180, 180),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Mentor"),
//         ),
//         body: Center(
//           child: const SelectableCard(),
//         ),
//       ),
//     );
//   }
// }
//
// class SelectableCard extends StatelessWidget {
//   const SelectableCard({Key? key});
//
//   void updateUserInformation(List<String> selectedLanguages, List<String> selectedRoles) {
//     CollectionReference mentorsCollection = FirebaseFirestore.instance.collection('Mentors');
//     String user = 'user'; // You might want to use a unique identifier for each mentor, e.g., user ID or mentor ID.
//
//     mentorsCollection.doc(user).set({
//       'selectedLanguages': selectedLanguages,
//       'selectedRoles': selectedRoles,
//     }).then((value) {
//       print("Mentor information updated successfully!");
//     }).catchError((error) {
//       print("Failed to update mentor information: $error");
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     List<String> selectedLanguages = [];
//     List<String> selectedRoles = [];
//
//     List<CardWidget> languageWidgets = [
//       const CardWidget(language: 'Python'),
//       const CardWidget(language: 'Java'),
//       const CardWidget(language: 'Django'),
//       const CardWidget(language: 'Kotlin'),
//       const CardWidget(language: 'JavaScript'),
//       const CardWidget(language: 'Vue.js'),
//       const CardWidget(language: 'Dart'),
//       const CardWidget(language: 'PHP'),
//       const CardWidget(language: 'MySQL'),
//     ];
//
//     List<CardWidget> roleWidgets = [
//       const CardWidget(language: 'Learner'),
//       const CardWidget(language: 'Mentor'),
//       const CardWidget(language: 'Program Assistant'),
//       const CardWidget(language: 'Mentor Manager'),
//       const CardWidget(language: 'Program Lead'),
//     ];
//
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           children: [
//             const Text("Become a mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//             const SizedBox(height: 10),
//             const Text("Fill in the form below"),
//             const SizedBox(height: 30),
//             const Text("Technical Proficiency", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: languageWidgets,
//             ),
//             const SizedBox(height: 10),
//             const Text("Previous Role Held", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: roleWidgets,
//             ),
//             const SizedBox(height: 100),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   for (var widget in languageWidgets) {
//                     if (widget.getIsSelected()) {
//                       selectedLanguages.add(widget.language);
//                     }
//                   }
//
//                   for (var widget in roleWidgets) {
//                     if (widget.getIsSelected()) {
//                       selectedRoles.add(widget.language);
//                     }
//                   }
//
//                   const String userId = 'userId';
//                   updateUserInformation(selectedLanguages, selectedRoles);
//
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => UploadDocuments()));
//                 },
//                 child: const Text("Next"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CardWidget extends StatefulWidget {
//   final String language;
//
//   const CardWidget({required this.language});
//
//   @override
//   _CardWidgetState createState() => _CardWidgetState();
//
//   // Add this method to get the isSelected status
//   bool getIsSelected() {
//     final _CardWidgetState state = _CardWidgetState();
//     return state.isSelected;
//   }
// }
//
// class _CardWidgetState extends State<CardWidget> {
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             isSelected = !isSelected;
//           });
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20.0),
//             color: isSelected ? const Color.fromARGB(255, 161, 139, 164) : const Color.fromARGB(136, 252, 248, 252),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Text(
//               widget.language,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: isSelected ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:mms_project/Mentors/Views/Onboarding/upload_documents.dart';
// import 'package:provider/provider.dart';
//
// import '../../../Providers/user_data_provider.dart';
//
// class TechnicalProficiency extends StatelessWidget {
//   const TechnicalProficiency({Key? key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           toolbarHeight: 100,
//           backgroundColor: const Color.fromARGB(255, 0, 180, 180),
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Mentor"),
//         ),
//         body: const Center(
//           child: SelectableCard(),
//         ),
//       ),
//     );
//   }
// }
//
// class SelectableCard extends StatelessWidget {
//   const SelectableCard({Key? key});
//
//   void updateUserInfo(BuildContext context, List<String> selectedLanguages, List<String> selectedRoles) async {
//     var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);
//
//     try {
//       User? user = FirebaseAuth.instance.currentUser;
//       await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
//         'selectedLanguages': selectedLanguages,
//         'selectedRoles': selectedRoles,
//       });
//
//       print('Data saved to Firestore successfully!');
//     } catch (e) {
//       print('Error saving data to Firestore: $e');
//     }
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     List<String> selectedLanguages = [];
//     List<String> selectedRoles = [];
//
//     List<CardWidget> languageWidgets = [
//       CardWidget(
//         language: 'Python',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedLanguages.add('Python');
//           } else {
//             selectedLanguages.remove('Python');
//           }
//         },
//       ),
//       CardWidget(
//         language: 'Python',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedLanguages.add('Python');
//           } else {
//             selectedLanguages.remove('Python');
//           }
//         },
//       ),
//       CardWidget(
//         language: 'Python',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedLanguages.add('Python');
//           } else {
//             selectedLanguages.remove('Python');
//           }
//         },
//       ),
//       CardWidget(
//         language: 'Python',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedLanguages.add('Python');
//           } else {
//             selectedLanguages.remove('Python');
//           }
//         },
//       ),
//       // Add other languageWidgets with similar changes
//     ];
//
//     List<CardWidget> roleWidgets = [
//       CardWidget(
//         language: 'Learner',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedRoles.add('Learner');
//           } else {
//             selectedRoles.remove('Learner');
//           }
//         },
//       ),
//       CardWidget(
//         language: 'Learner',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedRoles.add('Learner');
//           } else {
//             selectedRoles.remove('Learner');
//           }
//         },
//       ),
//       CardWidget(
//         language: 'Learner',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedRoles.add('Learner');
//           } else {
//             selectedRoles.remove('Learner');
//           }
//         },
//       ),
//       CardWidget(
//         language: 'Learner',
//         onSelectionChanged: (isSelected) {
//           if (isSelected) {
//             selectedRoles.add('Learner');
//           } else {
//             selectedRoles.remove('Learner');
//           }
//         },
//       ),
//       // Add other roleWidgets with similar changes
//     ];
//
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ListView(
//           children: [
//             const Text("Become a mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//             const SizedBox(height: 10),
//             const Text("Fill in the form below"),
//             const SizedBox(height: 30),
//             const Text("Technical Proficiency", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             const SizedBox(height: 10),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: languageWidgets,
//             ),
//             const SizedBox(height: 10),
//             const Text("Previous Role Held", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: roleWidgets,
//             ),
//             const SizedBox(height: 100),
//             SizedBox(
//               width: double.infinity,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Process selectedLanguages and selectedRoles
//                   const String userId = 'userId';
//                   updateUserInfo(context, selectedLanguages, selectedRoles);
//
//                   // Navigate to the next screen
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => UploadDocuments()));
//                 },
//                 child: const Text("Next"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class CardWidget extends StatefulWidget {
//   final String language;
//   final Function(bool isSelected) onSelectionChanged;
//
//   const CardWidget({required this.language, required this.onSelectionChanged, Key? key})
//       : super(key: key);
//
//   @override
//   _CardWidgetState createState() => _CardWidgetState();
// }
//
// class _CardWidgetState extends State<CardWidget> {
//   bool isSelected = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: GestureDetector(
//         onTap: () {
//           setState(() {
//             isSelected = !isSelected;
//           });
//           widget.onSelectionChanged(isSelected);
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20.0),
//             color: isSelected
//                 ? const Color.fromARGB(255, 161, 139, 164)
//                 : const Color.fromARGB(136, 252, 248, 252),
//           ),
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Text(
//               widget.language,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: isSelected ? Colors.white : Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Views/Onboarding/upload_documents.dart';
import 'package:provider/provider.dart';

import '../../../Providers/user_data_provider.dart';

class TechnicalProficiency extends StatelessWidget {
  const TechnicalProficiency({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Mentor"),
        ),
        body: const Center(
          child: SelectableCard(),
        ),
      ),
    );
  }
}

class SelectableCard extends StatelessWidget {
  const SelectableCard({Key? key});

  void updateUserInfo(
      BuildContext context, List<String> selectedLanguages, List<String> selectedRoles) async {
    var userDataProvider = Provider.of<UserDataProvider>(context, listen: false);

    try {
      User? user = FirebaseAuth.instance.currentUser;
      await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
        'selectedLanguages': selectedLanguages,
        'selectedRoles': selectedRoles,
      });

      print('Data saved to Firestore successfully!');
    } catch (e) {
      print('Error saving data to Firestore: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> selectedLanguages = [];
    List<String> selectedRoles = [];

    List<CardWidget> languageWidgets = [
      CardWidget(
        language: 'DevOps',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedLanguages.add('DevOps');
          } else {
            selectedLanguages.remove('DevOps');
          }
        },
      ),
      CardWidget(
        language: 'Java',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedLanguages.add('Java');
          } else {
            selectedLanguages.remove('Java');
          }
        },
      ),
      CardWidget(
        language: 'Vue js',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedLanguages.add('Vue js');
          } else {
            selectedLanguages.remove('Vue js');
          }
        },
      ),
      CardWidget(
        language: 'Python',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedLanguages.add('Python');
          } else {
            selectedLanguages.remove('Vue js');
          }
        },
      ),
      CardWidget(
        language: 'CyberSecurity',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedLanguages.add('CyberSecurity');
          } else {
            selectedLanguages.remove('CyberSecurity');
          }
        },
      ),
      // Add other languageWidgets with similar changes
    ];

    List<CardWidget> roleWidgets = [
      CardWidget(
        language: 'Learner',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedRoles.add('Learner');
          } else {
            selectedRoles.remove('Learner');
          }
        },
      ),
      CardWidget(
        language: 'Mentor',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedRoles.add('Mentor');
          } else {
            selectedRoles.remove('Mentor');
          }
        },
      ),
      CardWidget(
        language: 'Program Lead',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedRoles.add('Program Lead');
          } else {
            selectedRoles.remove('Program Lead');
          }
        },
      ),
      CardWidget(
        language: 'Mentor Manager',
        onSelectionChanged: (isSelected) {
          if (isSelected) {
            selectedRoles.add('Mentor Manager');
          } else {
            selectedRoles.remove('Mentor Manager');
          }
        },
      ),
      // Add other roleWidgets with similar changes
    ];




    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Become a mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            const SizedBox(height: 10),
            const Text("Fill in the form below"),
            const SizedBox(height: 30),
            const Text("Technical Proficiency", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: languageWidgets,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text("Previous Role Held", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8.0,
                  runSpacing: 8.0,
                  children: roleWidgets,
                ),
              ],
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Process selectedLanguages and selectedRoles
                  const String userId = 'userId';
                  updateUserInfo(context, selectedLanguages, selectedRoles);

                  // Navigate to the next screen
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => UploadDocuments()));
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
                  child: Text("Next"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatefulWidget {
  final String language;
  final Function(bool isSelected) onSelectionChanged;

  const CardWidget({required this.language, required this.onSelectionChanged, Key? key})
      : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
          widget.onSelectionChanged(isSelected);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: isSelected
                ? Colors.teal // Use teal color for selected items
                : const Color.fromARGB(136, 252, 248, 252),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              widget.language,
              style: TextStyle(
                fontSize: 16.0,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}





