import 'package:flutter/material.dart';

class ProgramInterest extends StatelessWidget {
  const ProgramInterest({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 161, 139, 164),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Mentor"),
        ),
        body: Center(
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
            SizedBox(height: 16),
            Text(
              "Become a mentor",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Fill in the form below"),
            SizedBox(height: 30),
            Text("Program of Interest ?"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "FullStack Development",
              ),
            ),
            SizedBox(height: 20),
            Text("Years of experience"),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "e.g 3 years",
              ),
            ),
            SizedBox(height: 65),
            Text("Been a mentor before? "),
            SizedBox(height: 10),
            Row(
              children: [],
            ),
            SizedBox(height: 200),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text("Next"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




