import 'package:flutter/material.dart';

class Interface1 extends StatefulWidget {

  @override
  _Interface1State createState() => _Interface1State();
}

class _Interface1State extends State<Interface1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/profile1.gif'),
            Text('Créez votre profil', style: TextStyle(fontSize: 18),),
            SizedBox(height: 20),
            IconButton(onPressed: () {
              //interface 2
              Navigator.pushNamed(context, '/pagesExplicatifs/expliquer2.dart');
            },
              icon: Icon(Icons.arrow_forward, color: Color(0xff9D70FF), size: 44,),
            ),
          ],
        ),
      ),
    );
  }
}
