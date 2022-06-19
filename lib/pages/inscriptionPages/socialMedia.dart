import 'package:flutter/material.dart';
import 'dart:io';

import 'finish.dart';

// ignore: must_be_immutable
class SocialMedia extends StatefulWidget {
  final String nom, email, password, genre, phone, univ, school, branche, niveau, etud_laureat, description;
  DateTime? date;
  final List<String> passions;
  final List<String> sdgs;
  int sdgs_counter;
  int counter;
  File? file;
  late String facebook;
  late String instagram;
  late String linkedIn;
  late String valueChoose;
  SocialMedia(
      {Key? key,
      required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre, required this.univ,
      required this.school, required this.branche, required this.niveau, required this.etud_laureat, required this.passions, required this.counter,
      required this.sdgs, required this.sdgs_counter, required this.description, required this.file, required this.valueChoose}) : super(key: key);

  @override
  _SocialMediaState createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  late String facebook;
  late String instagram;
  late String linkedIn;

  var loading = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _fbController = new TextEditingController();
    TextEditingController _igController = new TextEditingController();
    TextEditingController _liController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(100, 157, 112, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 80),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Copier les liens de vos réseaux sociaux !',
                        style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 70, 30, 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.facebook_outlined),
                        border: OutlineInputBorder(),
                        labelText: 'Facebook',
                      ),
                      controller: _fbController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.camera_alt_outlined),
                        border: OutlineInputBorder(),
                        labelText: 'Instagram',
                      ),
                      controller: _igController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.link_outlined),
                        border: OutlineInputBorder(),
                        labelText: 'linkedIn',
                      ),
                      controller: _liController,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 130),
                    child: ElevatedButton(
                        child: Text("Terminer",
                            style:
                            TextStyle(fontSize: 18, color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xffFFD035),
                          padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                        ),
                        onPressed: () {
                          facebook = _fbController.text;
                          instagram = _igController.text;
                          linkedIn = _liController.text;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Finish(
                                        nom: widget.nom,
                                        email: widget.email,
                                        password: widget.password,
                                        phone: widget.phone,
                                        date: widget.date,
                                        genre: widget.genre,
                                        univ: widget.univ,
                                        school: widget.school,
                                        branche: widget.branche,
                                        niveau: widget.niveau,
                                        etud_laureat: widget.etud_laureat,
                                        passions: widget.passions,
                                        counter: widget.counter,
                                        sdgs: widget.sdgs,
                                        sdgs_counter: widget.sdgs_counter,
                                        description: widget.description,
                                        file: widget.file,
                                        valueChoose: widget.valueChoose,
                                        facebook: facebook,
                                        instagram: instagram,
                                        linkedIn: linkedIn)),
                          );
                        }),
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}
