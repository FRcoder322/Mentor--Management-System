import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/More/Reports/Programs-Report/reports_page.dart';

import '../../../Onboarding/mentor_dashboard.dart';
import '../../../Programs/programs.dart';
import '../../../Tasks/mentor_tasks.dart';

class ProgramReports extends StatefulWidget {
  const ProgramReports({super.key});

  @override
  State<ProgramReports> createState() => _ProgramReportsState();
}

class _ProgramReportsState extends State<ProgramReports> {
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.teal,
      home:Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.teal,
          leading:  Row(
            children: [
              const Padding(padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 40,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(onPressed: (){

                  }, child: const Text("Hi Sandy",style: TextStyle(color: Colors.white),)),
                  const Text("Admin"),
                ],
              ),

            ],
          ),
          actions: const [
           Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(Icons.search),
              SizedBox(width: 14),
              Icon(Icons.notifications),
            ],
          ),
          ],

        ),
        body: const  ProgramReportsContent(),
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TasksContent(title: '',)));
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

      )


    );
  }
}
class ProgramReportsContent extends StatefulWidget {
  const ProgramReportsContent({Key? key}) : super(key: key);

  @override
  State<ProgramReportsContent> createState() => _ProgramReportsContentState();
}

class _ProgramReportsContentState extends State<ProgramReportsContent> {
  List<String> allReports = [
    "Reports",
    "My Managers",
    "My Certificates",
    "Discussion Forum",
    "Settings",
    "Log Out",
  ];
  List<String> customTexts = [
    "Preview, review and download reports directly",
    "Manage your team and their progress",
    "View and download your earned certificates",
    "Engage in discussions with other users",
    "Customize your app settings",
    "Log out from your account",
  ];
  List<IconData> icons = [
    Icons.insert_drive_file,
    Icons.supervisor_account,
    Icons.card_membership,
    Icons.forum,
    Icons.settings,
    Icons.logout,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          const SizedBox(height: 16),
          for (int i = 0; i < allReports.length; i++)
            buildProgramTile(context, allReports[i], customTexts[i], icons[i]),
        ],
      ),
    );
  }

  void navigateToReportPage(BuildContext context, String title) {
    // You can customize this switch statement based on your report pages
    switch (title) {
      case "Reports":
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ReportsPage()));
        break;
      case "My Managers":
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyManagersPage()));
        break;
      case "My Certificates":
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCertificatesPage()));
        break;
    // Add cases for other reports as needed
      default:
      // Do nothing for now
        break;
    }
  }

  Widget buildProgramTile(BuildContext context, String title, String customText, IconData icon) {
    return GestureDetector(
      onTap: () {
        // Navigate to the corresponding report page
        navigateToReportPage(context, title);
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        margin: const EdgeInsets.all(10.0),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: Icon(icon),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.normal)),
              const SizedBox(height: 8),
              Text(customText),
            ],
          ),
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}



class MyManagersPage extends StatelessWidget {
  const MyManagersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Managers"),
      ),
      body: const Center(
        child: Text("This is the My Managers Page"),
      ),
    );
  }
}

class MyCertificatesPage extends StatelessWidget {
  const MyCertificatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Certificates"),
      ),
      body: const Center(
        child: Text("This is the My Certificates Page"),
      ),
    );
  }
}

