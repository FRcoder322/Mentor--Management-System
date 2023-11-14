import 'package:flutter/material.dart';
import 'package:mms_project/Mentors/Onboarding/upload_documents.dart';

class TechnicalProficiency extends StatelessWidget {
  const TechnicalProficiency({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 0, 180, 180),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text("Mentor"),
        ),
        body: Center(
          child: SelectableCard(),
        ),
      ),
    );
  }
}

class SelectableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(136, 252, 248, 252),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            const Text("Become a mentor",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,),),
            const SizedBox(height: 10,),
            const Text("Fill in the form below"),
            SizedBox(height: 30,),
              const Text("Technical Proficiency",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            SizedBox(height: 10,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CardWidget(language: 'Python',),
                CardWidget(language: 'Java',),
                CardWidget(language: 'Django',),
                CardWidget(language: 'Kotlin',),

              ],

            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CardWidget(language: 'JavaScript',),
                CardWidget(language: 'Vue.js',),
                CardWidget(language: 'Dart',),

              ],

            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CardWidget(language: 'PHP',),
                CardWidget(language: 'MySQL',),

              ],

            ),
            SizedBox(height: 20,),
            Text("Previous Roles Held",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CardWidget(language: 'Learner',),
                CardWidget(language: 'Mentor',),
                CardWidget(language: 'Program Assistant',),

              ],

            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CardWidget(language: 'Mentor Manager',),
                CardWidget(language: 'Program Lead',),

              ],
            ),
            SizedBox(height: 100,),
            SizedBox(
              width: double.infinity,

             child: ElevatedButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => UploadDocuments()));
            },
            child: Text("Next")),
            )
          ],
        ),

      ),
    );
  }
}



class CardWidget extends StatefulWidget {
  final String language;

  CardWidget({required this.language});

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0), // Add padding to create space between cards
      child: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: isSelected ? const Color.fromARGB(255, 161, 139, 164) : const Color.fromARGB(136, 252, 248, 252),
          ),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              widget.language,
              style: TextStyle(
                fontSize: 16.0,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

