import 'package:flutter/material.dart';

const String studentName = 'Saad Shahid';

String greetingFor(int hour) {
  if (hour < 12) {
    return 'Good morning';
  } else if (hour < 17) {
    return 'Good afternoon';
  } else {
    return 'Good evening';
  }
}

void main() {
  runApp(const HelloApp());
}

class HelloApp extends StatelessWidget {
  const HelloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello Flutter',

      theme: ThemeData(
        colorSchemeSeed: const Color(0xFF7B1FA2),
        useMaterial3: true,
      ),

      home: Scaffold(
        backgroundColor: Colors.purple[100],

        appBar: AppBar(
          backgroundColor: Colors.purple[300],
          title: const Text('My First Flutter Project'),
          centerTitle: true,
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const FlutterLogo(size: 100),

              const SizedBox(height: 30),

              Text(
                '${greetingFor(DateTime.now().hour)}, $studentName!',
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  'I am a passionate and hardworking student. '
                  'I am interested in learning programming and '
                  'developing mobile applications. '
                  'Currently, I am learning Flutter and Dart '
                  'to become a professional app developer.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, color: Colors.black87),
                ),
              ),

              const SizedBox(height: 15),

              const Text(
                'THIS IS MY FIRST FLUTTER PROJECT!',
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
