import 'package:flutter/material.dart';


class CyberSecurity extends StatelessWidget {
  const CyberSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
          title: const Text('CyberSecurity course'),
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
    return   Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 16,),
            const Text("CyberSecurity"),
            SizedBox(height: 16,),
            const Text("Sep 03,2023- 08.00am"),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: const SizedBox(height: 20,),
            ),
            
            const Text("About",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

            const SizedBox(height: 16,),
            const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
             ' Ut et massa mi. Aliquam in hendrerit urna. Pellentesque '
              'sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris.'
             ' Maecenas vitae mattis te Nullam quis imperdiet augue. '
              'Vestibulum auctor ornare leo, non suscipit magna interdum eu.'),
            const SizedBox(height: 16),

            ElevatedButton(onPressed: (){

            }, child: const Text("Request to join program"))
          ],
        ),
      ),


    );
  }
}

