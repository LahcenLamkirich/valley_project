import 'package:flutter/material.dart';
import 'forms/loginForm.dart';

class Connect extends StatefulWidget {

  @override
  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 85),
              Text('Connexion!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                ),
              ),
              const MyCustomForm(),

              TextButton(onPressed: (){
                Navigator.pushNamed(context, '/pagesExplicatifs/expliquer1.dart');
              },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                        'Créer un compte ?',
                        style: TextStyle(
                        color: Color(0xff9D70FF),
                          fontSize: 16,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}


