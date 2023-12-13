import 'package:flutter/material.dart';
import '../More/Reports/Programs-Report/program_reports.dart';
import '../Onboarding/mentor_dashboard.dart';
import '../Programs/programs.dart';
import 'objectOrientedProgramming.dart';

class MentorTasks extends StatefulWidget {
  const MentorTasks({super.key});

  @override
  State<MentorTasks> createState() => _MentorTasksState();
}

class _MentorTasksState extends State<MentorTasks> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.teal,
      home: Scaffold(
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
          leading: Padding(
            padding: const EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(''),
            ),
          ),
        ),
        body: const TasksContent(title: '',),
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
      ),

    );
  }
}
class TasksContent extends StatefulWidget {
  const TasksContent({super.key, required String title});

  @override
  State<TasksContent> createState() => _TasksContentState();
}

class _TasksContentState extends State<TasksContent> {
  final TextEditingController _searchController = TextEditingController();
  List<String> allTasks = [
    "API",
    "DevOps",
    "Sdl",
    "OOP",
  ];

  List<String> filteredTasks = [];

  @override
  void initState() {
    super.initState();
    filteredTasks = allTasks;
    _searchController.addListener(() {
      setState(() {
        filteredTasks = allTasks
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
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
              hintText: "Search task",
              contentPadding: EdgeInsets.all(16), // Adjust the vertical padding
            ),
          ),

          const SizedBox(height: 16),
          Expanded(
            child: ListView(
              children: [
                for (String task in filteredTasks)
                  buildProgramTile(context, task, "Some Date"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProgramTile(BuildContext context, String title, String date) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ObjectOrientedProgramming()),
        );
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        margin: const EdgeInsets.all(10.0),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.normal)),
              const SizedBox(height: 8),
              Text(date),
            ],
          ),
          trailing: const Icon(Icons.arrow_right),
        ),
      ),
    );
  }
}




