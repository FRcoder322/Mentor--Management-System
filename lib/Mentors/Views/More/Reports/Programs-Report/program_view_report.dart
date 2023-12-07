import 'package:flutter/material.dart';

class ProgramView extends StatelessWidget {
  final List<String> allPrograms = [
    "CyberSecurity",
    "Fullstack Development",
    "DevOps",
    "Frontend Development",
  ];

  final TextEditingController _searchController = TextEditingController();

  ProgramView({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                hintText: "Search for program",
              ),
            ),
          ),
          const SizedBox(height: 16),
          for (String program in getFilteredPrograms(_searchController.text))
            buildProgramTile(context, program, "Sep 3, 2023 - 08:00am", Icons.work),
        ],
      ),
    );
  }

  List<String> getFilteredPrograms(String searchText) {
    return allPrograms
        .where((program) => program.toLowerCase().contains(searchText.toLowerCase()))
        .toList();
  }

  Widget buildProgramTile(BuildContext context, String title, String date, IconData leadingIcon) {
    return GestureDetector(
      onTap: () {
        // Handle navigation to the next page here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CyberSecurity(title: title)),
        );
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        margin: const EdgeInsets.all(10.0),
        child: ListTile(
          contentPadding: EdgeInsets.all(16),
          leading: Icon(leadingIcon), // Add leading icon
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.normal)),
              SizedBox(height: 8),
              Text(date),
            ],
          ),
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}

class CyberSecurity extends StatelessWidget {
  final String title;

  const CyberSecurity({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.teal,
        title: Text('$title Program'),
      ),
      body: SingleChildScrollView(
        child: ProgramCard(
          leadingIcon: Icons.work,
          title: title,
          description: "By Sandy Me 19th-25th Oct 2025",
        ),
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final IconData leadingIcon;
  final String title;
  final String description;

  ProgramCard({
    required this.leadingIcon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(leadingIcon, size: 40, color: Colors.teal),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text("Major achievements", style: TextStyle(fontWeight: FontWeight.bold)),
          const Text(
            "Completion of a cybersecurity course empowers individuals with skills in risk "
                "management, secure coding, network security, incident response, and cryptographic knowledge. "
                "Achieving certifications validates expertise, ensuring readiness for "
                "cybersecurity roles.",
          ),
          const SizedBox(height: 16),
          const Text("Major Blocker", style: TextStyle(fontWeight: FontWeight.bold),),
          const SizedBox(height: 5),
          const Text(
            "Major blockers in cybersecurity include evolving cyber threats, a shortage"
                " of skilled professionals, technology complexity, insider threats, lack of "
                "awareness, budget constraints,"
                " and challenges with regulatory compliance and legacy systems.",
          ),
          const SizedBox(height: 16),
          const Text("Major Recommendation", style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 5),
          const Text(
            "Key cybersecurity recommendations include continuous education, "
                "multi-factor authentication, regular software updates, encryption, "
                "network segmentation, incident response planning, employee training, access control, "
                "data backup, vulnerability management, "
                "cloud security, collaboration, and compliance adherence.",
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Share the Report via Email",style: TextStyle(fontWeight: FontWeight.bold),),
                      content: const Text("Kindly click on the button below to share to share report via email"),
                      actions: [
                        Column(
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("Open email app"),
                            ),
                          ],
                        ),
                        const Text("Cancel"),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                onPrimary: Colors.white,
                padding: const EdgeInsets.all(16),
              ),
              child: const Text("Share"),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text("Download Report"),
                      content: const Text("You have successfully downloaded report"),
                      actions: [
                        Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Done"),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.transparent,
                onPrimary: Colors.teal,
                padding: const EdgeInsets.all(16),
                side: const BorderSide(color: Colors.teal),
              ),
              child: const Text("Download"),
            ),
          ),
        ],
      ),
    );
  }
}




