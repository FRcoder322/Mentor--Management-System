import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/upload_documents.dart';

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
        body: Center(
          child: const SelectableCard(),
        ),
      ),
    );
  }
}

class SelectableCard extends StatelessWidget {
  const SelectableCard({Key? key});

  void updateUserInformation(List<String> selectedLanguages, List<String> selectedRoles) {
    CollectionReference Mentors = FirebaseFirestore.instance.collection('Mentors');
    String userId = 'Mentors';

    Mentors.doc(userId).set({
      'selectedLanguages': selectedLanguages,
      'selectedRoles': selectedRoles,
    }).then((value) {
      print("User information updated successfully!");
    }).catchError((error) {
      print("Failed to update user information: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> selectedLanguages = [];
    List<String> selectedRoles = [];

    List<CardWidget> languageWidgets = [
      const CardWidget(language: 'Python'),
      const CardWidget(language: 'Java'),
      const CardWidget(language: 'Django'),
      const CardWidget(language: 'Kotlin'),
      const CardWidget(language: 'JavaScript'),
      const CardWidget(language: 'Vue.js'),
      const CardWidget(language: 'Dart'),
      const CardWidget(language: 'PHP'),
      const CardWidget(language: 'MySQL'),
    ];

    List<CardWidget> roleWidgets = [
      const CardWidget(language: 'Learner'),
      const CardWidget(language: 'Mentor'),
      const CardWidget(language: 'Program Assistant'),
      const CardWidget(language: 'Mentor Manager'),
      const CardWidget(language: 'Program Lead'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: languageWidgets,
            ),
            const SizedBox(height: 10),
            const Text("Previous Role Held", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: roleWidgets,
            ),
            const SizedBox(height: 100),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  for (var widget in languageWidgets) {
                    if (widget.getIsSelected()) {
                      selectedLanguages.add(widget.language);
                    }
                  }

                  for (var widget in roleWidgets) {
                    if (widget.getIsSelected()) {
                      selectedRoles.add(widget.language);
                    }
                  }

                  const String userId = 'userId';
                  updateUserInformation(selectedLanguages, selectedRoles);

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => UploadDocuments()));
                },
                child: const Text("Next"),
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

  const CardWidget({required this.language});

  @override
  _CardWidgetState createState() => _CardWidgetState();

  // Add this method to get the isSelected status
  bool getIsSelected() {
    final _CardWidgetState state = _CardWidgetState();
    return state.isSelected;
  }
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
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: isSelected ? const Color.fromARGB(255, 161, 139, 164) : const Color.fromARGB(136, 252, 248, 252),
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





