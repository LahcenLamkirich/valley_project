import '/pages/inscriptionPages/passions.dart';
import 'package:flutter/material.dart';

class Parcours extends StatefulWidget {
  final String nom, email, password, genre, phone;
  DateTime? date;
  Parcours({Key? key, required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre}) : super(key: key);

  @override
  _ParcoursState createState() => _ParcoursState();
}

class _ParcoursState extends State<Parcours> {
  late String univ;
  late String school;
  late String branche;
  late String niveau;
  String etud_laureat="";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController _univController = new TextEditingController();
    TextEditingController _schoolController = new TextEditingController();
    TextEditingController _brancheController = new TextEditingController();
    TextEditingController _niveauController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(100, 157, 112, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text('Parcours académique', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 200, left: 42),
                  child: Row(
                    children: const [
                      Icon(Icons.school_outlined, color: Colors.black54, size: 28,),
                      SizedBox(width: 13),
                      Text("Vous êtes : ", style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17
                      )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 38, top:20, bottom: 30),
                  child: Row(
                    children: <Widget>[
                      ElevatedButton(
                        child: Text("Etudiant", style: TextStyle(color:  Color(0xffFF2F2F2F), fontSize: 15)),
                        onPressed: (){
                          setState(() {
                            etud_laureat='Etudiant';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: etud_laureat=='Etudiant'?Color(0xfff6d062): Colors.white70,
                          padding: EdgeInsets.fromLTRB(50, 9, 45, 9),
                        ),
                      ),

                      SizedBox(width: 20),

                      ElevatedButton(
                        child: Text("Lauréat", style: TextStyle(color:  Color(0xffFF2F2F2F), fontSize: 15)),
                        onPressed: (){
                          setState(() {
                            etud_laureat='Lauréat';
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: etud_laureat=='Lauréat'?Color(0xfff6d062): Colors.white70,
                          padding: EdgeInsets.fromLTRB(50, 9, 45, 9),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 18),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Université',
                    ),
                    textInputAction: TextInputAction.next,
                    controller: _univController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Saisir le nom de votre université';
                      }
                      return null;
                    },
                  ),
                ), //university
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 18),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Ecole/faculté',
                    ),
                    textInputAction: TextInputAction.next,
                    controller: _schoolController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Taper le nom de votre Ecole/faculté/Centre';
                      }
                      return null;
                    },
                  ),
                ), //school/faculty
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 18),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Branche',
                    ),
                    textInputAction: TextInputAction.next,
                    controller: _brancheController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Indiquer votre branche d\'étude';
                      }
                      return null;
                    },
                  ),
                ), //branche
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 18),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.school_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Niveau d\'étude',
                    ),
                    textInputAction: TextInputAction.send,
                    controller: _niveauController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Déterminer votre niveau d\'étude';
                      }
                      return null;
                    },
                  ),
                ), //niveau d'étude


                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    child: Text("Continuer", style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(100, 157, 112, 255),
                      padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate() && etud_laureat!=""){
                        univ = _univController.text;
                        school = _schoolController.text;
                        branche = _brancheController.text;
                        niveau = _niveauController.text;

                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              Passions(nom: widget.nom,
                                  email: widget.email,
                                  password: widget.password,
                                  phone: widget.phone,
                                  date: widget.date,
                                  genre: widget.genre,
                                  univ: univ,
                                  school: school,
                                  branche: branche,
                                  niveau: niveau,
                                  etud_laureat: etud_laureat)),
                        );
                      }
                      else{
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Etudiant ou lauréat ?')),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
