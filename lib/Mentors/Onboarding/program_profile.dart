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
          backgroundColor: Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Mentor"),
        ),
        body: const Center(
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
        padding: const EdgeInsets.all(20),
        children: [
          const SizedBox(height: 16),
          const Text("Become a Mentor", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
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
                        ? Image.file(pickedImageFile!).image
                        : const AssetImage('assets/default_profile_picture.png'),
                  ),
                  if (isLoading)
                    const CircularProgressIndicator(
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(255, 0, 180, 180)),
                    ),
                ],
              ),
              const SizedBox(height: 20,width: 10,),
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

              SizedBox(height: 20,width: 10,),
              TextButton(onPressed: (){

              }, child: const Text("Remove",style: TextStyle(color: Colors.black),)),
            ],
          ),
          const SizedBox(height: 16,),
          const Text('First name'),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Sunrise",

            ),

          ),
          const SizedBox(height: 16,),
          const Text("Last name"),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Jay",
            ),
          ),
          const SizedBox(height: 16,),
          const Text("Bio"),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Tell us about yourself',
                contentPadding: EdgeInsets.symmetric(vertical: 50.0),
            ),
          ),
        const SizedBox(height: 16,),
        const Text("Country"),
        const TextField(
          decoration: InputDecoration(
          border: OutlineInputBorder(),
            hintText: "Select a country",

          ),


        ),
          const SizedBox(height: 16,),
          const Text("City"),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Select a city",
            ),
          ),

          const SizedBox(height: 16,),
          ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProgramInterest()) );

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





