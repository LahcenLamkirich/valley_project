import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/pages/inscriptionPages/sdgs.dart';


class Passions extends StatefulWidget {
  final String nom, email, password, genre, phone, univ, school, branche, niveau, etud_laureat;
  DateTime? date;
  Passions({Key? key, required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre, required this.univ, required this.school, required this.branche, required this.niveau, required this.etud_laureat}) : super(key: key);

  @override
  _PassionsState createState() => _PassionsState();
}

class _PassionsState extends State<Passions> {
  late List<String> passions=[];
  int counter=0;
  @override
  Widget build(BuildContext context) {
    Color passionColor(String passion){
      if(!passions.contains(passion)){
        return Color(0xfff6d062);
      }else{
        return Color(0xffD7C9EC);
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(100, 157, 112, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[

              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Text('Passions', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                  child: Text('Choisir entre 1 et 3 passions!', style: TextStyle(fontSize: 18)),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(20, 38, 20, 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Apprentissage", style: const TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Apprentissage"),
                          padding: EdgeInsets.fromLTRB(23, 14, 25, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Apprentissage")){
                              passions.add("Apprentissage");
                            }
                            else{
                              passions.remove("Apprentissage");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Design", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Design"),
                          padding: EdgeInsets.fromLTRB(23, 14, 25, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Design")){
                              passions.add("Design");
                            }
                            else{
                              passions.remove("Design");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Art", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Art"),
                          padding: EdgeInsets.fromLTRB(22, 14, 25, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Art")){
                              passions.add("Art");
                            }
                            else{
                              passions.remove("Art");
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Music", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Music"),
                          padding: EdgeInsets.fromLTRB(22, 14, 23, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Music")){
                              passions.add("Music");
                            }
                            else{
                              passions.remove("Music");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Nature", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Nature"),
                          padding: EdgeInsets.fromLTRB(20, 14, 23, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Nature")){
                              passions.add("Nature");
                            }
                            else{
                              passions.remove("Nature");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Photographie", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Photographie"),
                          padding: EdgeInsets.fromLTRB(21, 14, 23, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Photographie")){
                              passions.add("Photographie");
                            }
                            else{
                              passions.remove("Photographie");
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Humour", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Humour"),
                          padding: EdgeInsets.fromLTRB(24, 13, 25, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Humour")){
                              passions.add("Humour");
                            }
                            else{
                              passions.remove("Humour");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Codage", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Codage"),
                          padding: EdgeInsets.fromLTRB(25, 13, 26, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Codage")){
                              passions.add("Codage");
                            }
                            else{
                              passions.remove("Codage");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Voyage", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Voyage"),
                          padding: EdgeInsets.fromLTRB(24, 13, 26, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Voyage")){
                              passions.add("Voyage");
                            }
                            else{
                              passions.remove("Voyage");
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Ecriture", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Ecriture"),
                          padding: EdgeInsets.fromLTRB(23, 14, 25, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Ecriture")){
                              passions.add("Ecriture");
                            }
                            else{
                              passions.remove("Ecriture");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Football", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Football"),
                          padding: EdgeInsets.fromLTRB(18, 14, 18, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Football")){
                              passions.add("Football");
                            }
                            else{
                              passions.remove("Football");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Animation", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Animation"),
                          padding: EdgeInsets.fromLTRB(24, 14, 27, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Animation")){
                              passions.add("Animation");
                            }
                            else{
                              passions.remove("Animation");
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Santé", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Santé"),
                          padding: EdgeInsets.fromLTRB(20, 13, 23, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Santé")){
                              passions.add("Santé");
                            }
                            else{
                              passions.remove("Santé");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Communication", style: TextStyle(color:  Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Communication"),
                          padding: EdgeInsets.fromLTRB(16, 13, 18, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Communication")){
                              passions.add("Communication");
                            }
                            else{
                              passions.remove("Communication");
                            }
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        child: Text("Lecture", style: TextStyle(color: Color(0xffFF2F2F2F))),
                        style: ElevatedButton.styleFrom(
                          primary: passionColor("Lecture"),
                          padding: EdgeInsets.fromLTRB(18, 13, 20, 12),
                        ),
                        onPressed: (){
                          setState(() {
                            if(!passions.contains("Lecture")){
                              passions.add("Lecture");
                            }
                            else{
                              passions.remove("Lecture");
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(
                  child: Text("Continuer", style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(100, 157, 112, 255),
                    padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                  ),
                  onPressed: () {
                    setState(() {
                      if (passions.isEmpty) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Choisir au moins une passion')),
                        );
                      }
                      else if (passions.length>3){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Ne dépassez pas 3 passions')),
                        );
                      }
                      else{
                        if(passions.length==1){counter=1;}
                        else if(passions.length==2){counter=2;}
                        else{counter=3;}
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Sdgs(nom: widget.nom, email: widget.email, password: widget.password, phone: widget.phone, date: widget.date, genre: widget.genre, univ: widget.univ, school: widget.school, branche: widget.branche, niveau: widget.niveau, etud_laureat: widget.etud_laureat, passions: passions, counter: counter)),
                        );
                      }
                  },
                );}
              ),
              )],
          ),
        ),
      ),
    );
  }
}

