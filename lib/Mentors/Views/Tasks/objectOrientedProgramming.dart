
import 'package:flutter/material.dart';

class ObjectOrientedProgramming extends StatelessWidget {
  const ObjectOrientedProgramming({super.key});

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
          title: const Text('Tasks'),
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
        padding:  EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ObjectOriented Programming",
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
           ElevatedButton(onPressed: (){}, child: const Text(" Mark as Complete"

           )),
            const SizedBox(height: 16,),
            TextButton(onPressed: (){}, child: const Text("Submit Report"))
          ],
        ),
      ),
    );
  }
}