import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:mms_project/Mentors/Views/More/Reports/Programs-Report/reports_page.dart';
import 'package:mms_project/Mentors/Views/Onboarding/login.dart';
import 'package:mms_project/Mentors/Views/Onboarding/mentor_onboard.dart';




import '../../../Onboarding/mentor_dashboard.dart';
import '../../../Onboarding/register.dart';
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
        appBar:AppBar(
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
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyManagersPage()));
        break;
      case "My Certificates":
        Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCertificatesPage()));
        break;
      case "Log Out":
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SignOutButton()));
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




class Mentor {
  final String name;
  final List<String> roles;
  final String text;
  final String profilePicture;

  Mentor({
    required this.profilePicture,
    required this.name,
    required this.roles,
    required this.text,
  });
}

class MyManagersPage extends StatefulWidget {
  MyManagersPage({Key? key}) : super(key: key);

  @override
  _MyManagersPageState createState() => _MyManagersPageState();
}

class _MyManagersPageState extends State<MyManagersPage> {
  // List of mentors
  final List<Mentor> mentors = [
    Mentor(name: "John Doe", roles: ["Mentor Manager", "Program Ass"], text: "program manager, Ilab, He/She", profilePicture: "url_to_image1"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Mentor Manager", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor Azure"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Mentor GCP", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor Azure"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Mentor Manager", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor Azure"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor Azure"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Mentor Manager", "Mentor Azure"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor Azure"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["PMentor Manager", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Mentor Manager", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
  ];

  List<Mentor> getMentorManagers() {
    return mentors.where((mentor) => mentor.roles.contains("Mentor Manager")).toList();
  }

  List<Mentor> getAdmins() {
    return mentors.where((mentor) => mentor.roles.contains("Admin")).toList();
  }

  bool isDisplayingMentorManagers = true;

  @override
  Widget build(BuildContext context) {
    List<Mentor> displayedMentors = isDisplayingMentorManagers ? getMentorManagers() : getAdmins();

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text('My Managers',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10,),
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      isDisplayingMentorManagers = true;
                    });
                  },
                  child: const Text("Mentor Managers",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 50,),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isDisplayingMentorManagers = false;
                    });
                  },
                  child: const Text("Admin",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            // List of mentors with profile pictures, names, roles, and text
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: displayedMentors.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(displayedMentors[index].profilePicture),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(displayedMentors[index].name),
                                const SizedBox(height: 5),
                                Text(
                                  displayedMentors[index].text,
                                  style: const TextStyle(color: Colors.black54),
                                ),
                                const SizedBox(height: 5),
                                // Display roles in a row
                                Row(
                                  children: displayedMentors[index].roles.map((role) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                                      margin: const EdgeInsets.only(right: 10),
                                      decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        role,
                                        style: const TextStyle(color: Colors.white),
                                      ),
                                    );
                                  }).toList(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class MyCertificatesPage extends StatefulWidget {
  const MyCertificatesPage({Key? key}) : super(key: key);

  @override
  _MyCertificatesPageState createState() => _MyCertificatesPageState();
}

class Certificate {
  final String name;
  final String role;
  final String assets; // Add a field for the PDF asset path

  Certificate({required this.name, required this.role, required this.assets});
}

class _MyCertificatesPageState extends State<MyCertificatesPage> {
  List<Certificate> certificates = [
    Certificate(name: "Fullstack Developer", role: "Mentor", assets: "assets/GAD Certificate.pdf"),
    Certificate(name: "Android Developer", role: "Mentor", assets: "assets/GAD Certificate.pdf"),
    Certificate(name: "Cyber-security", role: "Mentor", assets: "assets/GAD Certificate.pdf"),
    Certificate(name: "Cloud Developer", role: "Mentor", assets: "assets/GAD Certificate.pdf"),
    Certificate(name: "Fullstack Developer", role: "Mentor", assets: "assets/GAD Certificate.pdf"),
    Certificate(name: "DevOps", role: "Mentor", assets: "assets/GAD Certificate.pdf"),
  ];

  List<bool> isExpandedList = List.generate(10, (index) => false); // Initially, all dropdowns are closed

  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text("Certificates",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: "Search Certificates",
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none, // Remove TextField border
                ),
                onChanged: (value) {
                  setState(() {
                    searchTerm = value.toLowerCase();
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: certificates.length,
              itemBuilder: (context, index) {
                return ExpansionPanelList(
                  elevation: 1,
                  expandedHeaderPadding: EdgeInsets.all(5),
                  expansionCallback: (int panelIndex, bool isExpanded) {
                    setState(() {
                      isExpandedList[index] = !isExpanded;
                    });
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          leading: Icon(Icons.school), // Add leading icon
                          title: Text(certificates[index].name),
                          subtitle: Text(certificates[index].role),
                        );
                      },
                      body: Container(
                        height: 300, // Adjust the height as needed
                        child: isExpandedList[index]
                            ? PDFView(
                          filePath: certificates[index].assets,
                          autoSpacing: true,
                          pageSnap: true,
                          swipeHorizontal: true,
                          nightMode: false,
                        )
                            : Container(),
                      ),
                      isExpanded: isExpandedList[index],
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SignOutButton extends StatelessWidget {
  const SignOutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await FirebaseAuth.instance.signOut();
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const MentorOnboard()),
              (route) => false,
        );
      },
      child: const Text('Sign Out'),
    );
  }
}