import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Views/Programs/fullstack.dart';

import '../More/Reports/Programs-Report/program_reports.dart';
import '../More/Reports/Programs-Report/program_view_report.dart';
import '../Onboarding/mentor_dashboard.dart';
import '../Tasks/mentor_tasks.dart';

class Programs extends StatelessWidget {
  const Programs({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.teal,
          title: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text("Hi, Sandy"),
                    ),
                    const Text("Admin"),
                  ],
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
          ),
          leading: const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(''),
            ),
          ),
        ),

        body:  const ProgramContents(title: '',),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.apps),
              label: 'Programs',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assignment),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_horiz),
              label: 'More',
            ),
          ],
          onTap: (int index) {
            // Handle navigation based on the tapped index
            switch (index) {
              case 0:
              // Navigate to Dashboard page
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MentorDashboard()));
                break;
              case 1:
              // Navigate to Programs page
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Programs()));
                break;
              case 2:
              // Navigate to Tasks page
               Navigator.push(context, MaterialPageRoute(builder: (context) => const MentorTasks()));
                break;
              case 3:
              // Navigate to Messages page
              // Navigator.push(context, MaterialPageRoute(builder: (context) => MessagesPage()));
                break;
              case 4:
              // Navigate to More page
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProgramReports()));
                break;
            }
          },
        ),
      ),
    );
  }
}


class ProgramContents extends StatefulWidget {
  const ProgramContents({Key? key, required String title}) : super(key: key);

  @override
  _ProgramContentsState createState() => _ProgramContentsState();
}

class _ProgramContentsState extends State<ProgramContents> {
  final TextEditingController _searchController = TextEditingController();
  List<String> allPrograms = [
    "CyberSecurity",
    "Fullstack Development",
    "DevOps",
    "Frontend Development",
  ];

  List<String> filteredPrograms = [];

  @override
  void initState() {
    super.initState();
    filteredPrograms = allPrograms;
    _searchController.addListener(() {
      setState(() {
        filteredPrograms = allPrograms
            .where((program) =>
            program.toLowerCase().contains(_searchController.text.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

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
          for (String program in filteredPrograms)
            buildProgramTile(context, program, "Sep 3, 2023 - 08:00am", Icons.work), // Change the icon as needed
        ],
      ),
    );
  }

  Widget buildProgramTile(BuildContext context, String title, String date, IconData leadingIcon) {
    return GestureDetector(
      onTap: () {
        // Handle navigation to the next page here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Fullstack()),
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







