import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:mms_project/Mentors/Onboarding/alert_dialog.dart';

class UploadDocuments extends StatelessWidget {
  const UploadDocuments({super.key});

  Future<void> _uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;

      print('File picked: ${file.name}');
    } else {
      print('File picking canceled.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 161, 139, 164),
          leading: IconButton(
            icon:Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          title: Text("Mentor"),

      ),
         body: DocumentsContent(uploadFile: _uploadFile),
    ),
    );
  }
}

class DocumentsContent extends StatelessWidget {
  final VoidCallback uploadFile;

  const DocumentsContent({Key? key, required this.uploadFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Become a mentor", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          SizedBox(height: 16),
          Text("Fill in the form Below"),
          SizedBox(height: 16),
          Text("Upload your Documents", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          SizedBox(height: 25),
          TextButton(
            onPressed: uploadFile,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Upload files here",style: TextStyle(color: Colors.black),),
                Icon(Icons.upload_outlined,color: Colors.black,),
              ],
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.shade300),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(vertical: 20, horizontal: 32),
              ),
            ),
          ),

          Text("Please upload all the necessary files that supports your application"
              "  .Uploads support PDF,JPEG and Docs files.",style: TextStyle(fontSize: 14,),),

          SizedBox(height: 80,),
          Text("Socials",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

           TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               hintText: "@github account"
             ),
           ),
           SizedBox(height: 16,),
           TextField(
               decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 hintText: "@Linkedin userName"
               ),
           ),
          SizedBox(height: 80,),

          ElevatedButton(onPressed: (){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return ProfileAlertDialog(); // Use the custom AlertDialog widget here
              },
            );
          },
              child: Text("Next"))

         ],

      ),
    );
  }
}
