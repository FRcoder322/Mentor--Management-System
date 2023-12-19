//
// import 'package:flutter/material.dart';
//
// import '../../../Programs/programs.dart';
// import '../../../Tasks/mentor_tasks.dart';
//
// class ReportsPage extends StatefulWidget {
//   const ReportsPage({Key? key}) : super(key: key);
//
//   @override
//   _ReportsPageState createState() => _ReportsPageState();
// }
//
// class _ReportsPageState extends State<ReportsPage> {
//   late Widget? currentContent;
//
//   @override
//   void initState() {
//     super.initState();
//     currentContent = const ProgramContents(title: '');
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Reports'),
//         backgroundColor: Colors.teal,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 16,),
//             Row(
//               children: [
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       currentContent = const ProgramContents(title: '');
//                     });
//                   },
//                   child: const Text("Program Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
//                 ),
//                 const SizedBox(width: 25),
//                 TextButton(
//                   onPressed: () {
//                     setState(() {
//                       currentContent = const TasksContent(title: '');
//                     });
//                   },
//                   child: const Text("Tasks Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 16),
//             if (currentContent != null)
//               Expanded(
//                 child: currentContent!,
//               ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         backgroundColor: Colors.teal,
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Views/More/Reports/Programs-Report/program_view_report.dart';
import '../../../Tasks/mentor_tasks.dart';

class ReportsPage extends StatefulWidget {

  const ReportsPage({Key? key, }) : super(key: key);

  @override
  _ReportsPageState createState() => _ReportsPageState();
}

class _ReportsPageState extends State<ReportsPage> {
  late Widget? currentContent;

  @override
  void initState() {
    super.initState();
    // Set the initial content class to null
    currentContent = ProgramView(title: '');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Text('Reports',style: TextStyle(color: Colors.white),),
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
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        currentContent =  ProgramView(title: '');
                      });
                    },
                    child: const Text("Program Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
                const SizedBox(width: 32),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        currentContent = const TasksContent(title: '');
                      });
                    },
                    child: const Text("Tasks Reports", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            if (currentContent != null)
              Expanded(
                child: currentContent!,
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}

