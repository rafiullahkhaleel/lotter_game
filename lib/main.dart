import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lotter_game/page2.dart';
import 'package:lotter_game/page3.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: ThemeMode.system,
      home:    MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
    MyHomePage({super.key});
    Random random = Random();

 int x = 10;

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lottery Game'),
        backgroundColor: Colors.green.withOpacity(.7),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lottery winning number is 5',
            style: TextStyle(
              fontSize: 18
            ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Clicking on the below botton for Lucky Number',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18
                ),
              ),
            ),
        const SizedBox(
          height: 20,
        ),
             InkWell(
               child: Container(
                 height: 70,
                 width: 70,
                 decoration: BoxDecoration(
                   color: Colors.green.withOpacity(.7),
                   shape: BoxShape.circle
                 ),
                 child: Icon(Icons.local_florist_outlined,
                      color: Colors.red.withOpacity(1),
                   size: 40,
                 ),
               ),
               onTap: (){
                 x = random.nextInt(10);
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return x == 5 ? Screen1() : Screen2(recieved:x.toString());
                 }));
               },
             )
          ],
        ),
      ),
    );
  }
}
