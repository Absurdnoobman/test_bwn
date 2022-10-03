import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEST BWN Demo',
      theme: ThemeData(
      /*
      This is the theme of your application.
      
      Try running your application with "flutter run". You'll see the
      application has a blue toolbar. Then, without quitting the app, try
      changing the primarySwatch below to Colors.green and then invoke
      "hot reload" (press "r" in the console where you ran "flutter run",
      or simply save your changes to "hot reload" in a Flutter IDE).
      Notice that the counter didn't reset back to zero; the application
      is not restarted.
      */
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
      // appBar: AppBar(
      //   title: const Text("TEST BWN",
      //     style: TextStyle(
      //       color: Colors.white
      //     ),
      //   ),
      //   foregroundColor: Colors.white,
      //   shadowColor: Colors.white,
      // ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: Image.asset('image/BWNpicFinishedV2.png')
            ),
            const Welcome(),
            // const LowerUI(),
          ]
        )
      )
    );
  }
}

// Middle Widget
class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override 
  Widget build(BuildContext context){
    return Text(
      'Welcome',
      style: GoogleFonts.openSans(
        textStyle: const TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold
        ) 
      ),
    );
  }
}

class LowerUI extends StatelessWidget {
  const LowerUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const [
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.blue),
          child: Text('FFFFFF'),
        ),
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.redAccent),
          child: Text('RRRRRR'),
        ),
      ],
    );
  }
}