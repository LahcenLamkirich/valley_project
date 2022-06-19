import 'package:flutter/material.dart';

class Interface3 extends StatefulWidget {

  @override
  _Interface3State createState() => _Interface3State();
}

class _Interface3State extends State<Interface3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/profile3.gif'),
            Text('Formez l’équipe de vos rêves', style: TextStyle(fontSize: 18),),
            SizedBox(height: 20),
            IconButton(onPressed: () {
              //interface 4
              Navigator.pushNamed(context, '/pagesExplicatifs/expliquer4.dart');
            },
              icon: Icon(Icons.arrow_forward, color: Color(0xff9D70FF), size: 44,),
            ),
          ],
        ),
      ),
    );
  }
}
