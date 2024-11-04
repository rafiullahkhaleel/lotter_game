import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key, required this.recieved});
  final String recieved;

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Lottery Game',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 1),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error,
                      color: Colors.red.shade700,
                      size: 40,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Better luck next time your number is',
                          style: TextStyle(color: Colors.black),
                          textAlign: TextAlign.center),
                    ),
                     Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(widget.recieved,
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center
                      ),
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              InkWell(
                child: Container(
                  height: 40,
                  width: 90,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(topRight:   Radius.circular(20),
                    bottomLeft:  Radius.circular(20),
                      topLeft:  Radius.circular(5),
                     bottomRight:  Radius.circular(5),
                    )
                  ),
                  child: const Center(child: Text('Try Again',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                  )),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
        ));
  }
}
class MyClass extends StatefulWidget {
  const MyClass({super.key});

  @override
  State<MyClass> createState() => _MyClassState();
}

class _MyClassState extends State<MyClass> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}