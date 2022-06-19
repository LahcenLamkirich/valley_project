import 'package:flutter/material.dart';

class Interface4 extends StatefulWidget {

  @override
  _Interface4State createState() => _Interface4State();
}

class _Interface4State extends State<Interface4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/profile4.gif'),
            Text('Discutez sur votre projet', style: TextStyle(fontSize: 18),),

            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
              child: SizedBox(height: 40),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pages/inscriptionPages/compte.dart');
                },
                child: const Text('Commencer', style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                  primary: Color(0xffFFD035),
                  padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                )


            ),
          ],
        ),
      ),
    );
  }
}
