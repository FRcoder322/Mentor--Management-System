
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mms_project/Mentors/Views/Onboarding/technical_proficiency.dart';

class ProgramInterest extends StatelessWidget {
  const ProgramInterest({Key? key});

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
              SizedBox(width: 16), // Adjust the width as needed
            ],
          ),
        ),
        body: const Center(
          child: ProgramInterestContent(),
        ),
      ),
    );
  }
}

class ProgramInterestContent extends StatefulWidget {
  const ProgramInterestContent({Key? key}) : super(key: key);

  @override
  _ProgramInterestContentState createState() => _ProgramInterestContentState();
}

class _ProgramInterestContentState extends State<ProgramInterestContent> {
  String programOfInterest = "FullStack Development"; // Default value
  String yearsOfExperience = "";
  bool? isMentorBefore;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              const Text(
                "Become a mentor",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text("Fill in the form below"),
              SizedBox(height: 25),
              const Text("Program of Interest ?"),
              const SizedBox(height: 25,),

              DropdownButton<String>(
                value: programOfInterest,
                onChanged: (String? value) {
                  setState(() {
                    programOfInterest = value!;
                  });
                },
                items: ["FullStack Development", "Mobile App Development", "Web Development"]
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 25),
              const Text("Years of experience"),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "e.g 3 years",
                ),
                onChanged: (value) {
                  setState(() {
                    yearsOfExperience = value;
                  });
                },
              ),
              const SizedBox(height: 45),
              const Text("Been a mentor before? "),
              SizedBox(height: 10),
              Row(
                children: [
                  Radio(
                    value: true,
                    groupValue: isMentorBefore,
                    onChanged: (value) {
                      setState(() {
                        isMentorBefore = value as bool?;
                      });
                    },
                  ),
                  const Text("Yes"),
                  SizedBox(width: 20,),
                  Radio(
                    value: false,
                    groupValue: isMentorBefore,
                    onChanged: (value) {
                      setState(() {
                        isMentorBefore = value as bool?;
                      });
                    },
                  ),
                  const Text("No"),
                ],
              ),
              const SizedBox(height: 80),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Call your updateUserInfo function here
                    updateUserInfo(programOfInterest, yearsOfExperience, isMentorBefore);
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TechnicalProficiency()));
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
                  ),
                  child: const Text("Next", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> updateUserInfo(String programOfInterest, String yearsOfExperience, bool? isMentorBefore) async {
    try {
      User? user = FirebaseAuth.instance.currentUser;
      await FirebaseFirestore.instance.collection('Mentors').doc(user?.uid).update({
        'programOfInterest': programOfInterest,
        'yearsOfExperience': yearsOfExperience,
        'isMentorBefore': isMentorBefore,
      });

      print('Data saved to Firestore successfully!');
    } catch (e) {
      print('Error saving data to Firestore: $e');
    }
  }
}


