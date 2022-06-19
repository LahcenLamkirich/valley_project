import 'package:valleyproject/pages/Connect.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff8854FB),
              Color(0xff88D2E3),
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset('assets/logo.png', height: 170),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Bouregrag Valley',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 18, 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, '/connexion');
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Color.fromARGB(100, 157, 112, 255),
        ),
      ),
    );
  }
}
