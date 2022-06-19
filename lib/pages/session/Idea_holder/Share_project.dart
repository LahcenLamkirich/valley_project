import 'package:flutter/material.dart';

class Share_project extends StatefulWidget {
  const Share_project({Key? key}) : super(key: key);

  @override
  State<Share_project> createState() => _Share_projectState();
}

class _Share_projectState extends State<Share_project> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 100),
              const Center(
                child: Text("Informations sur votre projet", style: TextStyle(fontSize: 25, color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 80, 40, 25),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Titre du projet',
                  ),
                  // The validator receives the text that the user has entered.
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.fromLTRB(38, 0, 38, 0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: 1,
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: ("Description sur le projet"),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xff8C8C8C), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xff8C8C8C), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 40, 25),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: 'Domaines demandés',
                  ),
                  // The validator receives the text that the user has entered.
                ),
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                  child: Text("Valider", style: TextStyle(fontSize: 18, color: Colors.black)),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xffFFD035),
                    padding: EdgeInsets.fromLTRB(70, 16, 70, 16),
                  ),
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Parfait !", style: TextStyle(color: Color(0xff5E30C2))),
                        content: Text("Votre projet sera visible par les autres profils ayant le savoir-faire. Vous allez recevoir leurs demandes pour rejoindre votre équipe"),
                        actions: <Widget>[
                          TextButton(
                            child: Text("Suivant"),
                            style: TextButton.styleFrom(
                              primary: Colors.black,
                              backgroundColor: Color(0xffFFCE50),
                              shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                              padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                            ),
                            onPressed: (){
                              showDialog(context: context, builder: (context){
                                return AlertDialog(
                                  title: Text("N’oubliez pas !", style: TextStyle(color: Color(0xff5E30C2))),
                                  content: Text("Maintenant vous pouvez consulter les différents profils existants et leur envoyer des invitations pour rejoindre votre équipe"),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text("C’est parti"),
                                      style: TextButton.styleFrom(
                                        primary: Colors.black,
                                        backgroundColor: Color(0xffFFCE50),
                                        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),
                                        padding: EdgeInsets.fromLTRB(50, 15, 50, 15),
                                      ),
                                      onPressed: (){
                                        Navigator.pushNamed(context, '/menuPage');
                                      },
                                    )
                                  ],
                                );
                              });
                            },
                          )
                        ],
                      );
                    });
                  }
              ),
            ],
          ),
        )
    );
  }
}
