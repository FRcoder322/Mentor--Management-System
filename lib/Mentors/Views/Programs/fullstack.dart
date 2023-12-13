
import 'package:flutter/material.dart';

import '../More/Reports/Programs-Report/program_reports.dart';
import '../More/Reports/Programs-Report/reports_page.dart';

class Fullstack extends StatelessWidget {
  const Fullstack({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Fullstack course'),
        ),
        body: const Center(
          child: CourseContent(),
        ),
      ),
    );
  }
}

class CourseContent extends StatelessWidget {
  const CourseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Fullstack",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Sep 03,2023- 08.00am"),
            ),
            const SizedBox(height: 55),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "About",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
                    ' Ut et massa mi. Aliquam in hendrerit urna. Pellentesque '
                    'sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris.'
                    ' Maecenas vitae mattis te Nullam quis imperdiet augue. '
                    'Vestibulum auctor ornare leo, non suscipit magna interdum eu.',
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
            ),
            const SizedBox(height: 200),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).removeCurrentSnackBar();
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      backgroundColor:Colors.white,
                      content: Text('Request sent successfully!',style: TextStyle(color: Colors.black),),
                      behavior: SnackBarBehavior.floating,
                      margin: EdgeInsets.only(top: 16),
                    ),
                  );
                },
                child: const Text("Request to join program", style: TextStyle(fontSize: 14)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


