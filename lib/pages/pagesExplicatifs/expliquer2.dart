import 'package:flutter/material.dart';

class Interface2 extends StatefulWidget {

  @override
  _Interface2State createState() => _Interface2State();
}

class _Interface2State extends State<Interface2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/profile2.gif'),
            Text('Chercher les meilleurs profils', style: TextStyle(fontSize: 18),),
            Text('pour vous', style: TextStyle(fontSize: 18),),
            SizedBox(height: 20),
            IconButton(onPressed: () {
              //interface 3
              Navigator.pushNamed(context, '/pagesExplicatifs/expliquer3.dart');
            },
              icon: Icon(Icons.arrow_forward, color: Color(0xff9D70FF), size: 44,),
            ),
          ],
        ),
      ),
    );
  }
}
