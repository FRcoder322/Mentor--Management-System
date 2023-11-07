import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mms_project/Mentors/Onboarding/program_interest.dart';
import 'dart:io';

class ProgramProfile extends StatelessWidget {
  const ProgramProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 161, 139, 164),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Mentor"),
        ),
        body: Center(
          child: ProfileContent(),
        ),
      ),
    );
  }
}

class ProfileContent extends StatefulWidget {
  const ProfileContent({Key? key});

  @override
  _ProfileContentState createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  File? pickedImageFile;
  bool isLoading = false;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 16),
          Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
          SizedBox(height: 16),
          Text("Fill in the form Below"),
          SizedBox(height: 16),
          Text("Set program Avatar"),
          SizedBox(height: 16),

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
                        ? Image.file(pickedImageFile!).image
                        : AssetImage('assets/default_profile_picture.png'),
                  ),
                  if (isLoading)
                    CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                ],
              ),
              SizedBox(height: 20,width: 10,),
              ElevatedButton(
                onPressed: _pickImage,
                child: Text('Pick Profile Picture'),
              ),
              SizedBox(height: 20,width: 10,),
              TextButton(onPressed: (){

              }, child: Text("Remove")),
            ],
          ),
          SizedBox(height: 16,),
          Text('First name'),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Sunrise",

            ),

          ),
          SizedBox(height: 16,),
          Text("Last name"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Jay",
            ),
          ),
          SizedBox(height: 16,),
          Text("Bio"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Tell us about yourself',
                contentPadding: EdgeInsets.symmetric(vertical: 50.0),
            ),
          ),
        SizedBox(height: 16,),
        Text("Country"),
        TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
            hintText: "Select a country",

          ),


        ),
          SizedBox(height: 16,),
          Text("City"),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Select a city",
            ),
          ),

          SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInterest()) );

           },
              child: Text("Next"),),



        ],
      ),
    );
  }
}





