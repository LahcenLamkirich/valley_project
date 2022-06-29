import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:valleyproject/main.dart';
import 'package:flutter/material.dart';
import 'dart:io';

import 'socialMedia.dart';

class Domaine extends StatefulWidget {
  final String nom, email, password, genre, phone, univ, school, branche, niveau, etud_laureat, description;
  DateTime? date;
  final List <String> passions;
  final List <String> sdgs;
  int sdgs_counter;
  int counter;
  File? file;
  Domaine({Key? key, required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre, required this.univ, required this.school, required this.branche, required this.niveau, required this.etud_laureat, required this.passions, required this.counter, required this.sdgs, required this.sdgs_counter, required this.description, required this.file}) : super(key: key);

  @override
  _DomaineState createState() => _DomaineState();
}
class _DomaineState extends State<Domaine> {
  String valueChoose='';

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance ;
  CollectionReference usersReference = FirebaseFirestore.instance.collection("users");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(100, 157, 112, 255),
          centerTitle: true,
        ),
        body:SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 80),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Center(
                      child: Text('Sélectionner votre domaine de spécialité!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 70, 40, 0),
                      child: ElevatedButton(
                        child: Text("Designer", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        onPressed: (){
                          setState(() {
                            valueChoose='Designer';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: valueChoose=='Designer'?Color(0xffD7C9EC):Color(0xfff6d062),
                          padding: EdgeInsets.fromLTRB(110, 14, 110, 12),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                      child: ElevatedButton(
                        child: Text("Développeur", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        onPressed: (){
                          setState(() {
                            valueChoose='Développeur';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: valueChoose=='Développeur'?Color(0xffD7C9EC):Color(0xfff6d062),
                          padding: EdgeInsets.fromLTRB(98, 14, 99, 12),
                        ),

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                      child: ElevatedButton(
                        child: Text("Manager", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        onPressed: (){
                          setState(() {
                            valueChoose='Manager';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: valueChoose=='Manager'?Color(0xffD7C9EC):Color(0xfff6d062),
                          padding: EdgeInsets.fromLTRB(110, 14, 110, 12),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 0),
                      child: ElevatedButton(
                        child: Text("Marketeur", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        onPressed: (){
                          setState(() {
                            valueChoose='Marketeur';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: valueChoose=='Marketeur'?Color(0xffD7C9EC):Color(0xfff6d062),
                          padding: EdgeInsets.fromLTRB(105, 14, 106, 12),
                        ),

                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top:150),
                      child: ElevatedButton(
                          child: Text("Continuer", style: TextStyle(fontSize: 18),),
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(100, 157, 112, 255),
                            padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                          ),
                          onPressed: () {
                            if(valueChoose!=''){
                              // here i have to add the traitement :
                              // saveNewUser(context);


                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SocialMedia(nom: widget.nom, email: widget.email, password: widget.password, phone: widget.phone, date: widget.date, genre: widget.genre, univ: widget.univ, school: widget.school, branche: widget.branche, niveau: widget.niveau, etud_laureat: widget.etud_laureat,passions: widget.passions,counter: widget.counter, sdgs: widget.sdgs, sdgs_counter: widget.sdgs_counter,description: widget.description, file: widget.file, valueChoose: valueChoose)),
                              );
                            }
                            else{
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Indiquer votre domaine !')),
                              );
                            }

                          }

                      ),
                    )
                  ],
                ),
            ),
          ),

    );
  }

  // la declaration de la fonction :
  saveNewUser(BuildContext context) async {

    User? firebaseUser = (await _firebaseAuth.createUserWithEmailAndPassword(
        email: widget.email,
        password: widget.password
    ).catchError((onError){
      Navigator.pop(context);
    })).user;

    // Now the user is created Successfully :
    if(firebaseUser != null) {

      print("the email is : " + widget.email) ;
      print("the password is : " + widget.password);

      usersReference.doc(firebaseUser.uid).set({
        "nom" : widget.nom,
        "phone": widget.phone,
        "date": widget.date,
        "genre": widget.genre,
        "univ": widget.univ,
        "school": widget.school,
        "branche": widget.branche,
        "niveau": widget.niveau,
        "etud_laureat": widget.etud_laureat,
        "passions": widget.passions,
        "counter": widget.counter,
        "sdgs": widget.sdgs,
        "sdgs_counter": widget.sdgs_counter,
        "description": widget.description,
        "file": widget.file,
        "valueChoose": valueChoose
      });

      // userReference.child(firebaseUser.uid).set({
      //   "nom" : widget.nom,
      //   "phone": widget.phone,
      //   "date": widget.date,
      //   "genre": widget.genre,
      //   "univ": widget.univ,
      //   "school": widget.school,
      //   "branche": widget.branche,
      //   "niveau": widget.niveau,
      //   "etud_laureat": widget.etud_laureat,
      //   "passions": widget.passions,
      //   "counter": widget.counter,
      //   "sdgs": widget.sdgs,
      //   "sdgs_counter": widget.sdgs_counter,
      //   "description": widget.description,
      //   "file": widget.file,
      //   "valueChoose": valueChoose
      // });
      print("User Added Successfully !");
    }
  }




}