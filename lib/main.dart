import 'package:valleyproject/route_generator.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(CofounderApp());
}

class CofounderApp extends StatefulWidget {
  const CofounderApp({Key? key}) : super(key: key);

  @override
  _CofounderAppState createState() => _CofounderAppState();
}

class _CofounderAppState extends State<CofounderApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Co-founders Valley',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          fontFamily: 'InriaSans',
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: '/chooseService',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
