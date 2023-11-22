
// import 'package:flutter/material.dart';
// import 'package:flutter/foundation.dart';
// import 'package:file_picker/file_picker.dart';
//
//
// class UploadDocuments extends StatelessWidget {
//   UploadDocuments({Key? key}) : super(key: key);
//
//   PlatformFile? selectedFile;
//   final GlobalKey<_DocumentsContentState> _documentsContentKey =
//   GlobalKey<_DocumentsContentState>();
//
//   Future<void> _uploadFile() async {
//     FilePickerResult? result = await FilePicker.platform.pickFiles();
//
//     if (result != null) {
//       selectedFile = result.files.first;
//
//       if (kDebugMode) {
//         print('File picked: ${selectedFile!.name}');
//       }
//
//       _documentsContentKey.currentState?.updateFileContent(selectedFile!.name);
//     } else {
//       if (kDebugMode) {
//         print('File picking canceled.');
//       }
//     }
//   }
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
//             icon: const Icon(Icons.arrow_back),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           title: const Text("Mentor"),
//         ),
//         body: DocumentsContent(
//           key: _documentsContentKey,
//           uploadFile: _uploadFile,
//           fileContent: '', // Initialize fileContent here
//         ),
//       ),
//     );
//   }
// }
//
// class DocumentsContent extends StatefulWidget {
//   final VoidCallback uploadFile;
//   final String fileContent;
//
//   const DocumentsContent({
//     Key? key,
//     required this.uploadFile,
//     required this.fileContent, // Initialize fileContent in the constructor
//   }) : super(key: key);
//
//   @override
//   _DocumentsContentState createState() => _DocumentsContentState();
// }
//
// class _DocumentsContentState extends State<DocumentsContent> {
//   String fileContent = '';
//
//   void updateFileContent(String fileName) {
//     setState(() {
//       fileContent = fileName;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromARGB(136, 252, 248, 252),
//       body: ListView(
//         padding: EdgeInsets.all(16),
//         children: [
//           const Text("Become a mentor",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//           const SizedBox(height: 16),
//           const Text("Fill in the form Below"),
//           const SizedBox(height: 16),
//           const Text("Upload your Documents",
//               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//           const SizedBox(height: 25),
//           TextButton(
//             onPressed: widget.uploadFile,
//             style: ButtonStyle(
//               backgroundColor:
//               MaterialStateProperty.all<Color>(Colors.grey.shade300),
//               padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
//                 const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
//               ),
//             ),
//             child: const Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Upload files here",
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 Icon(Icons.upload_outlined, color: Colors.black),
//               ],
//             ),
//           ),
//           const Text(
//             "Please upload all the necessary files that support your application"
//                 "  .Uploads support PDF, JPEG, and Docs files.",
//             style: TextStyle(fontSize: 14),
//           ),
//           const SizedBox(height: 25),
//           if (selectedFile.isNotEmpty)
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   'Selected Files:',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 8),
//                 for (var file in widget.selectedFiles)
//
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(fileContent),
//                     ElevatedButton(
//                       onPressed: () {
//                         setState(() {
//                           // Clear the file content when the "Remove" button is pressed
//                           fileContent = '';
//                         });
//                       },
//                       child: const Text('Remove '),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//               ],
//             ),
//           const Text("Socials",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           const Row(
//             children: [
//               Flexible(
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(), hintText: "username"),
//                 ),
//               ),
//               SizedBox(width: 8),
//               Flexible(
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: "@github account"),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 16),
//           const Row(
//             children: [
//               Flexible(
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(), hintText: "username"),
//                 ),
//               ),
//               SizedBox(width: 8),
//               Flexible(
//                 child: TextField(
//                   decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                       hintText: "@linkedin username"),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 80),
//           ElevatedButton(
//             onPressed: () {
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   return ProfileAlertDialog();
//                 },
//               );
//             },
//             child: Text("Next"),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ProfileAlertDialog extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Profile Alert'),
//       content: Text('Your profile information has been submitted.'),
//       actions: [
//         TextButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: Text('OK'),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:file_picker/file_picker.dart';
import 'package:mms_project/Mentors/Onboarding/application_status.dart';
import 'package:mms_project/Mentors/Onboarding/mentor_dashboard.dart';

import 'alert_dialog.dart';


class UploadDocuments extends StatelessWidget {
  UploadDocuments({Key? key}) : super(key: key);

  final GlobalKey<_DocumentsContentState> _documentsContentKey =
  GlobalKey<_DocumentsContentState>();

  Future<void> _uploadFiles() async {
    FilePickerResult? result =
    await FilePicker.platform.pickFiles(allowMultiple: true);

    if (result != null) {
      List<PlatformFile> selectedFiles = result.files;

      if (kDebugMode) {
        for (var file in selectedFiles) {
          print('File picked: ${file.name}');
        }
      }

      _documentsContentKey.currentState?.addFiles(selectedFiles);
    } else {
      if (kDebugMode) {
        print('File picking canceled.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: const Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Mentor"),
        ),
        body: DocumentsContent(
          key: _documentsContentKey,
          uploadFiles: _uploadFiles,
        ),
      ),
    );
  }
}

class DocumentsContent extends StatefulWidget {
  const DocumentsContent({
    Key? key,
    required this.uploadFiles,
  }) : super(key: key);

  final VoidCallback uploadFiles;

  @override
  _DocumentsContentState createState() => _DocumentsContentState();
}

class _DocumentsContentState extends State<DocumentsContent> {
  List<PlatformFile> selectedFiles = [];

  void addFiles(List<PlatformFile> newFiles) {
    setState(() {
      selectedFiles.addAll(newFiles);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          const Text("Become a mentor",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 16),
          const Text("Fill in the form Below"),
          const SizedBox(height: 16),
          const Text("Upload your Documents",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 25),
          TextButton(
            onPressed: widget.uploadFiles,
            style: ButtonStyle(
              backgroundColor:
              MaterialStateProperty.all<Color>(Colors.grey.shade300),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                const EdgeInsets.symmetric(vertical: 20, horizontal: 32),
              ),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upload files here",
                  style: TextStyle(color: Colors.black),
                ),
                Icon(Icons.upload_outlined, color: Colors.black),
              ],
            ),
          ),
          const Text(
            "Please upload all the necessary files that support your application"
                "  .Uploads support PDF, JPEG, and Docs files.",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 20),
          if (selectedFiles.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                for (var file in selectedFiles)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(file.name),
                          SizedBox(width: 8), // Add spacing between file name and "Remove" button
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                // Remove the file from the list when the "Remove" button is pressed
                                selectedFiles.remove(file);
                              });
                            },
                            child: const Text('Remove'),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8), // Add vertical spacing between files
                    ],
                  ),
              ],
            ),
          const SizedBox(height: 20),
          const Text("Socials",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "username"),
                ),
              ),
              SizedBox(width: 8),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "@github account"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            children: [
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "username"),
                ),
              ),
              SizedBox(width: 8),
              Flexible(
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "@linkedin username"),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
          ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const DocumentsAlertDialog();
                },
              );
            },
            child: const Text("Next"),
          ),
        ],
      ),
    );
  }
}



