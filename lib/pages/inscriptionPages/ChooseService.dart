import 'dart:io';
import 'package:flutter/material.dart';

class ChooseService extends StatefulWidget {
  final String nom, email, password, genre, phone, univ, school, branche, niveau, etud_laureat, description;
  DateTime? date;
  final List <String> passions;
  final List <String> sdgs;
  int sdgs_counter;
  int counter;
  File? file;
  // String choice ;
  ChooseService({Key? key, required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre, required this.univ, required this.school, required this.branche, required this.niveau, required this.etud_laureat, required this.passions, required this.counter, required this.sdgs, required this.sdgs_counter, required this.description, required this.file}) : super(key: key);

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  late String choice = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 44),
                Center(
                  child: Column(
                    children: const [
                      Text("Commencer à", style: TextStyle(fontSize: 23)),
                      Text("construire votre équipe", style: TextStyle(fontSize: 23))
                    ],
                  ),
                ),
                Image.asset('assets/team.gif'),
                ElevatedButton(
                    child: const Text(" J’ai une idée de projet ", style: TextStyle(fontSize: 18, color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffFFD035),
                      padding: const EdgeInsets.fromLTRB(35, 20, 35, 20),
                    ),
                    onPressed: (){
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text("J'ai une idée de projet!", style: TextStyle(color: Color(0xff5E30C2))),
                          content: const Text(
                            "En créant votre compte en tant qu'un porteur d'idée de projet, vous pouvez chercher les profils intéressants pour construire votre équipe!",
                            style: TextStyle(fontSize: 19),
                            textAlign: TextAlign.justify,
                          ),
                          actions: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: TextButton(
                                child: const Text("Commencer"),
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Color(0xffFFCE50),
                                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                                ),
                                onPressed: (){
                                  this.choice = "ideaHolder";
                                  print("The Choice is : " + this.choice);
                                  showDialog(context: context, builder: (context){
                                    return AlertDialog(
                                      title: const Text("Félicitations!\n Votre compte est bien créé!", style: TextStyle(color: Color(0xff5E30C2))),
                                      actions: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(75.0),
                                          child: TextButton(
                                            child: const Text("C'est parti!"),
                                            style: TextButton.styleFrom(
                                              primary: Colors.black,
                                              backgroundColor: Color(0xffFFCE50),
                                              shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                              padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                                            ),
                                            onPressed: (){
                                              Navigator.pushNamed(context, '/IdeaHolder_HomePage');
                                            },
                                          ),
                                        )
                                      ],
                                    );
                                  });
                                },
                              ),
                            )
                          ],
                        );
                      });

                    }
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                    child: const Text(" J’ai le savoir-faire ", style: TextStyle(fontSize: 18, color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xff9D70FF),
                      padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    ),
                    onPressed: (){
                      choice = "skillsPerson";
                      print("The Choice is : " + this.choice);
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          title: Text("J'ai une idée de projet!", style: TextStyle(color: Color(0xff5E30C2))),
                          content: const Text(
                            "En créant votre compte en tant qu'un talentueux; vous allez indiquer votre domaine et commencer à chercher le projet adéquat pour vous!)",
                            style: TextStyle(fontSize: 19),
                            textAlign: TextAlign.justify,
                          ),
                          actions: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: TextButton(
                                child: const Text("Commencer"),
                                style: TextButton.styleFrom(
                                  primary: Colors.black,
                                  backgroundColor: Color(0xffFFCE50),
                                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                  padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                                ),
                                onPressed: (){
                                  Navigator.pushNamed(context, '/MainPageTalent');
                                },
                              ),
                            )
                          ],
                        );
                      });
                    }
                ),
                const SizedBox(height: 20),
                const Text("NB: Vous ne pouvez pas modifier votre choix après!"),
                const SizedBox(height: 30),
              ],
            ),
        )
    );
  }
}
