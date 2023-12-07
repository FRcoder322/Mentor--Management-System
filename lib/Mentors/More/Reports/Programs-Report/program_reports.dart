import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/More/Reports/Programs-Report/reports_page.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';




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
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyManagersPage()));
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

class MyManagersPage extends StatelessWidget {
  MyManagersPage({Key? key}) : super(key: key);

  // List of mentors
  final List<Mentor> mentors = [
    Mentor(name: "John Doe", roles: ["Mentor Manager", "Program Ass"], text: "program manager, Ilab, He/She", profilePicture: "url_to_image1"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Mentor GCP", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Admin", "Mentor Azure"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Program Ass Moringa", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
    Mentor(name: "Jane Smith", roles: ["Security Expert", "Mentor"], text: "Mentor", profilePicture: "url_to_image2"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text('My Managers'),
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
                  onPressed: () {},
                  child: const Text("Mentor Managers"),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Admin"),
                ),
              ],
            ),
            const SizedBox(height: 20,),
            // List of mentors with profile pictures, names, roles, and text
            ListView.builder(
              shrinkWrap: true,
              itemCount: mentors.length,
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
                          backgroundImage: NetworkImage(mentors[index].profilePicture),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(mentors[index].name),
                            const SizedBox(height: 5),
                            Text(
                              mentors[index].text,
                              style: const TextStyle(color: Colors.black54),
                            ),
                            const SizedBox(height: 5),
                            // Display roles in a row
                            Row(
                              children: mentors[index].roles.map((role) {
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
          ],
        ),
      ),
    );
  }
}


// class MyCertificatesPage extends StatefulWidget {
//   const MyCertificatesPage({Key? key}) : super(key: key);
//
//   @override
//   _MyCertificatesPageState createState() => _MyCertificatesPageState();
// }
//
// class Certificate {
//   final String name;
//   final String role;
//
//   Certificate({required this.name, required this.role});
// }
//
// class _MyCertificatesPageState extends State<MyCertificatesPage> {
//   List<Certificate> certificates = [
//     Certificate(name: "Certificate 1", role: "Role 1"),
//     Certificate(name: "Certificate 2", role: "Role 2"),
//     Certificate(name: "Certificate 3", role: "Role 3"),
//     // Add more certificates as needed
//   ];
//
//   List<bool> isExpandedList = List.generate(3, (index) => false); // Initially, all dropdowns are closed
//
//   String searchTerm = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Certificates"),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: TextField(
//               decoration: const InputDecoration(
//                 hintText: "Search Certificates",
//                 prefixIcon: Icon(Icons.search),
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   searchTerm = value.toLowerCase();
//                 });
//               },
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: certificates.length,
//               itemBuilder: (context, index) {
//                 return ExpansionPanelList(
//                   elevation: 1,
//                   expandedHeaderPadding: EdgeInsets.all(0),
//                   expansionCallback: (int panelIndex, bool isExpanded) {
//                     setState(() {
//                       isExpandedList[index] = !isExpanded;
//                     });
//                   },
//                   children: [
//                     ExpansionPanel(
//                       headerBuilder: (BuildContext context, bool isExpanded) {
//                         return ListTile(
//                           title: Text(certificates[index].name),
//                           subtitle: Text(certificates[index].role),
//                         );
//                       },
//                       body: const Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: Text("Certificate details go here."),
//                       ),
//                       isExpanded: isExpandedList[index],
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
    Certificate(name: "Fullstack Developer", role: "Role 1", assets: "assets/GAD Certificate.pdf"),
    Certificate(name: "Android Developer", role: "Role 2", assets: "assets/GAD Certificate.pdf"),
    Certificate(name: "DevOps", role: "Role 3",assets: "assets/GAD Certificate.pdf"),

  ];

  List<bool> isExpandedList = List.generate(3, (index) => false); // Initially, all dropdowns are closed

  String searchTerm = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Certificates"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: "Search Certificates",
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  searchTerm = value.toLowerCase();
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: certificates.length,
              itemBuilder: (context, index) {
                return ExpansionPanelList(
                  elevation: 1,
                  expandedHeaderPadding: EdgeInsets.all(0),
                  expansionCallback: (int panelIndex, bool isExpanded) {
                    setState(() {
                      isExpandedList[index] = !isExpanded;
                    });
                  },
                  children: [
                    ExpansionPanel(
                      headerBuilder: (BuildContext context, bool isExpanded) {
                        return ListTile(
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