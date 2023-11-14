import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/mentor_dashboard.dart';



class ApplicationStatus extends StatefulWidget {
  const ApplicationStatus({super.key});

  @override
  _ApplicationStatus createState() => _ApplicationStatus();
}

class _ApplicationStatus extends State<ApplicationStatus> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: const Color.fromARGB(255, 0, 180, 180),
          title: const Row(
            children: [
              Column(
                children: [
                  Text('Hi, Sandy',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  Text('Admin',style: TextStyle(fontSize: 14),),
                ],
              ),
            ],
          ),
          leading: const Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(

              radius: 20,
              backgroundImage: NetworkImage('https://example.com/profile.jpg'),
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          
          children:[

            const Text("Application status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            const SizedBox( height: 20),
              Row(
               mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    child: Checkbox(value: _isChecked, onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value ?? false;
                      });
                    },
                    ),
                  ),
                  const SizedBox( height: 20),
                  const Text("Application Submitted", style: TextStyle(fontSize: 14),)
                ],
              ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Checkbox(value: _isChecked, onChanged: (bool?value)
                    {
                      setState(() {
                        _isChecked=value ?? false;
                      });
                    }),
                  ),
                ),
                const SizedBox(height: 16,),
                const Text("Application pending Review" ,style: TextStyle(fontSize: 14),),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Checkbox(value: _isChecked, onChanged: (bool?value)
                  {
                    setState(() {
                      _isChecked=value ?? false;
                    });
                  }),
                ),
                const Text("Application approved"),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  height: 2,
                  width: 150,
                  color: Colors.black,

                ),
                TextButton(onPressed: (){

                }, child: const Text("Date")),

                Container(
                  height: 2,
                  width: 150,
                  color: Colors.black,

                ),
              ],
            ),
            SizedBox(height: 16,),
            const Text("Your application to be mentor is in progress.you will get a"
                " notification about the final update soon."),
            
            const SizedBox(height: 30,),
            const Text("Admin",style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 100,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) =>MentorDashboard()),);
            }, child: const Text("Start your Journey"))
            
        ],

        ),
      ),
    );
  }
}
