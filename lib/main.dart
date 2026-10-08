import 'package:flutter/material.dart';

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
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        scaffoldBackgroundColor: const Color(0xFF292929),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 48, 0.0, 32.0),
        child: Column(children: [
          _TrackingElemen(color: Color.fromARGB(255, 120, 230, 18), iconData: Icons.directions_run, unit: 'm'),
          _TrackingElemen(color: Color.fromARGB(255, 6, 28, 233), iconData: Icons.local_drink, unit: 'l'),
          _TrackingElemen(color: Color.fromARGB(255, 233, 13, 5), iconData: Icons.fastfood, unit: 'pieces'),
        ],)
      ),
    );
  }
}

class _TrackingElemen extends StatefulWidget {
  const _TrackingElemen({required this.color, required this.iconData, required this.unit});

  final Color color;
  final IconData iconData;
  final String unit;

  @override
  State<_TrackingElemen> createState() => __TrackingElemenState();
}

class __TrackingElemenState extends State<_TrackingElemen> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(32.0, 64.0, 32.0, 24.0),
          child: Row(children: <Widget>[
            Icon(widget.iconData, color: Colors.white70, size: 50),
            Text(
              '2300 / 5000 ${widget.unit}',
              style: const TextStyle(color: Colors.white70, fontSize: 32)
            ),
          ],),
        ),
        LinearProgressIndicator(
          value: 0.3, 
          color: widget.color, 
          backgroundColor: const Color.fromARGB(52, 255, 255, 255),
          minHeight: 12.0,
        ),
      ],
    )
    ); 
  }
}
