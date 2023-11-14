import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/technical_proficiency.dart';

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
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text("Mentor"),
        ),
        body: const Center(
          child: ProgramInterestContent(),
        ),
      ),
    );
  }
}

class ProgramInterestContent extends StatelessWidget {
  const ProgramInterestContent({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "Become a mentor",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
            ),
            SizedBox(height: 10),
            Text("Fill in the form below"),
            SizedBox(height:25),
            const Text("Program of Interest ?"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "FullStack Development",
              ),
            ),
            SizedBox(height: 15),
            const Text("Years of experience"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "e.g 3 years",
              ),
            ),
            SizedBox(height: 45),
            const Text("Been a mentor before? "),
            SizedBox(height: 10),
            Row(
              children: [],
            ),
            SizedBox(height: 80),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TechnicalProficiency()));

                },
                child: Text("Next"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 0, 180, 180)),
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}




