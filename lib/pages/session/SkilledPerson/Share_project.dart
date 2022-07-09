import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Share_project extends StatefulWidget {
  const Share_project({Key? key}) : super(key: key);

  @override
  State<Share_project> createState() => _Share_projectState();
}

class _Share_projectState extends State<Share_project> {
  bool _devChecked=false;
  bool _manChecked=false;
  bool _marChecked=false;
  bool _desChecked=false;
  final List<String> domaines=[];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              const Center(
                child: Text("Informations sur votre projet", style: TextStyle(fontSize: 25, color: Colors.black)),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Titre du projet',
                  ),
                  // The validator receives the text that the user has entered.
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(38, 0, 38, 20),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: 1,
                  maxLines: 8,
                  decoration: InputDecoration(
                    hintText: ("Description sur le projet"),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              const Padding(
                padding: EdgeInsets.fromLTRB(38, 0, 38, 20),
                child: TextField(
                  minLines: 1,
                  maxLines: 8,
                  keyboardType: TextInputType.none,

                  decoration: InputDecoration(
                    hintText: ("Choisir les domaines recherchés d'après la liste :"),
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 40, 20),
                child: Column(
                  children: [
                    CheckboxListTile(
                      title: Text('Développeur'),
                      controlAffinity:
                      ListTileControlAffinity.leading,
                      value: _devChecked,
                      onChanged: (bool? value){
                        domaines.contains('Développeur')?domaines.remove('Développeur'):domaines.add('Développeur');
                        setState(() {
                           _devChecked = value!;
                        });
                      },
                      checkColor: Colors.blueAccent,
                    ),
                    CheckboxListTile(
                      title: Text('Manager'),
                      controlAffinity:
                      ListTileControlAffinity.leading,
                      value: _manChecked,
                      onChanged: (bool? value){
                        domaines.contains('Manager')?domaines.remove('Manager'):domaines.add('Manager');
                        setState(() {
                          _manChecked = value!;
                        });
                      },
                      checkColor: Colors.blueAccent,
                    ),
                    CheckboxListTile(
                      title: Text('Marketeur'),
                      controlAffinity:
                      ListTileControlAffinity.leading,
                      value: _marChecked,
                      onChanged: (bool? value){
                        domaines.contains('Marketeur')?domaines.remove('Marketeur'):domaines.add('Marketeur');
                        setState(() {
                          _marChecked = value!;
                        });
                      },
                      checkColor: Colors.blueAccent,
                    ),
                    CheckboxListTile(
                      title: Text('Designer'),
                      controlAffinity:
                      ListTileControlAffinity.leading,
                      value: _desChecked,
                      onChanged: (bool? value){
                        domaines.contains('Designer')?domaines.remove('Designer'):domaines.add('Designer');
                        setState(() {
                          _desChecked = value!;
                        });
                      },
                      checkColor: Colors.blueAccent,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
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
                        content: const Text(
                            "Votre projet sera visible par les autres profils ayant le savoir-faire. Vous allez recevoir leurs demandes pour rejoindre votre équipe",
                            style: TextStyle(fontSize: 19),
                            textAlign: TextAlign.justify,
                        ),
                        actions: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
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
                                    content: const Text(
                                        "Maintenant vous pouvez consulter les différents profils existants et leur envoyer des invitations pour rejoindre votre équipe",
                                        style: TextStyle(fontSize: 19),
                                        textAlign: TextAlign.justify,
                                    ),
                                    actions: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(17.0),
                                        child: TextButton(
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
              const SizedBox(height: 40),
            ],
          ),
        );
  }
}


// final items = ['Développeur', 'Manager', 'Marketeur', 'Designer'];
// String? domaineValue;

// Padding(
// padding: EdgeInsets.fromLTRB(40, 0, 40, 25),
// child: Container(
// padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(4),
// border: Border.all(color: Colors.black12, width: 1),
// ),
// child:DropdownButtonHideUnderline(
// child: DropdownButton<String>(
// hint: Text('Domaines recherchés'),
// value: domaineValue,
// iconSize: 36,
// icon: Icon(Icons.arrow_drop_down, color: Colors.black),
// isExpanded: true,
// items: items.map(buildMenuItem).toList(),
// onChanged: (value) => setState(() => domaineValue = value),
// )),
// ),
// ),
//
//
// DropdownMenuItem<String> buildMenuItem(String item) =>
//     DropdownMenuItem(
//       value: item,
//       child: Text(
//         item,
//         style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
//       ),
//     );