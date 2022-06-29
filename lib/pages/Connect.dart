import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'forms/loginForm.dart';

class Connect extends StatefulWidget {

  @override
  _ConnectState createState() => _ConnectState();
}

class _ConnectState extends State<Connect> {

  CollectionReference universitiesReference = FirebaseFirestore.instance.collection("universities");

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Connexion!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
              ),
            ),
            const MyCustomForm(),
            TextButton(onPressed: (){
              //
              // Map<String, dynamic> dataHere = {
              //   "id": 21,
              //   "name": "Université Privée Mundiapolis- Casablanca"
              // };
              //
              // universitiesReference.add(dataHere);
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
    );
  }
}


