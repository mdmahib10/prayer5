import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'timepicker.dart';
//import 'playsound.dart';

final AudioPlayer audioPlayer = AudioPlayer();



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Prayer5 Reminder'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 50,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                audioPlayer.stop(); // <-- Use the same instance
              },
              child: const Text('Stop Sound'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Fajr'),
                //const Spacer(flex: 100,),
                const SizedBox(width: 50),
                time_picker(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Duhr'),
                //const Spacer(flex: 100,),
                const SizedBox(width: 50),
                time_picker(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Asr'),
                //const Spacer(flex: 100,),
                const SizedBox(width: 50),
                time_picker(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Maghrib'),
                //const Spacer(flex: 100,),
                const SizedBox(width: 50),
                time_picker(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Isha'),
                //const Spacer(flex: 100,),
                const SizedBox(width: 50),
                time_picker(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
