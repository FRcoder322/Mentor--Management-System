

// import 'package:flutter/material.dart';
//
// import '../../../Programs/programs.dart';
// import '../../../Tasks/mentor_tasks.dart';
//
//
//
// class ReportsPage extends StatefulWidget {
//   const ReportsPage({Key? key}) : super(key: key);
//
//   @override
//   _ReportsPageState createState() => _ReportsPageState();
// }
//
// class _ReportsPageState extends State<ReportsPage> {
//   final PageController _pageController = PageController(initialPage: 0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal,
//         title: const Text("Reports"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 10,),
//             Row(
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     _pageController.jumpToPage(1);
//                   },
//                   child: const Text("Program Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
//                 ),
//                 const SizedBox(width: 32),
//                 TextButton(
//                   onPressed: () {
//                     _pageController.jumpToPage(1);
//                   },
//                   child: const Text("Tasks Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             const TextField(
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.search),
//                 hintText: "Search for report programs",
//               ),
//             ),
//             const SizedBox(height: 16),
//             Expanded(
//               child: PageView(
//                 controller: _pageController,
//                 children: [
//
//                   buildProgramReportsContents(),
//                   // Content for Tasks Reports (replace with your content)
//                   buildTasksReportsContent(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Handle the floating action button press to add a program
//         },
//         backgroundColor: Colors.teal,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
//
//   Widget buildProgramReportsContents() {
//     return ListView(
//       children: const [
//         ProgramContents(title: '',),
//       ],
//     );
//   }
//
//   Widget buildTasksReportsContent() {
//     return ListView(
//       children: const [
//         TasksContent(title: '',),
//       ],
//     );
//   }
//
//
//   Widget buildProgramTile(String title) {
//     return Card(
//       elevation: 3,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(6.0),
//       ),
//       margin: const EdgeInsets.all(10.0),
//       child: ListTile(
//         contentPadding: const EdgeInsets.all(16),
//         title: Text(title, style: const TextStyle(fontWeight: FontWeight.normal)),
//         trailing: const Icon(Icons.arrow_right),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }
// }


import 'package:flutter/material.dart';

class ReportsPage extends StatefulWidget {
  const ReportsPage({Key? key}) : super(key: key);

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text("Reports"),
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
                    _pageController.jumpToPage(0);
                  },
                  child: const Text("Program Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
                const SizedBox(width: 32),
                TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(1);
                  },
                  child: const Text("Tasks Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
                hintText: "Search for report programs",
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  ProgramReportsContent(),
                  TasksReportsContent(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the floating action button press to add a program
        },
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}

class ProgramReportsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with the content of your Program Reports screen
    return Container(
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Program Reports Content',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}

class TasksReportsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with the content of your Tasks Reports screen
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text(
          'Tasks Reports Content',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
