import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:valleyproject/route_generator.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyA0cOE-Jz75Vt6i_MrlhzfVfG03cltdZUE",
        appId: "1:1030417489346:android:882c3ce69c7f5239510a5b",
        messagingSenderId: "1030417489346",
        projectId: "valleyproject-ec1e5",
        // storageBucket: "valleyproject-ec1e5.appspot.com"
    )
  );
  runApp(CofounderApp());
}

// Make the colllection here :
// DatabaseReference userReference = FirebaseDatabase.instance.ref("users");

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
      initialRoute: '/connexion',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
