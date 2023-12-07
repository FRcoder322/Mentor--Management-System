import 'package:flutter/material.dart';


class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Align the entire row to the start (left)
            children: [
              const CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                    'https://example.com/path/to/your/image.jpg'),
              ),
              const SizedBox(width: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center, // Align text to the start (left)
                children: [
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      // Add your onPressed logic here
                    },
                    child: const Text('Hi Sandy', style: TextStyle(color: Colors.white)),
                  ),
                  const Text("Admin"),
                ],
              ),
            ],
          ),
          const SizedBox(width: 16),
          const Icon(Icons.search),
          const SizedBox(width: 16),
          const Icon(Icons.notifications),
        ],
      ),
      body: const Center(
        child: Text('Your content goes here'),
      ),
    );
  }
}
