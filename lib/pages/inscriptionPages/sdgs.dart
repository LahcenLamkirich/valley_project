import 'package:flutter/material.dart';
import '/pages/inscriptionPages/profil_description.dart';

class Sdgs extends StatefulWidget {
  final String nom, email, password, genre, phone, univ, school, branche, niveau, etud_laureat;
  DateTime? date;
  final List <String> passions;
  int counter;
  Sdgs({Key? key, required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre, required this.univ, required this.school, required this.branche, required this.niveau, required this.etud_laureat, required this.passions, required this.counter}) : super(key: key);

  @override
  _SdgsState createState() => _SdgsState();
}
class _SdgsState extends State<Sdgs> {
  late List <String> sdgs=[];
  int sdgs_counter=0;

  @override
  Widget build(BuildContext context) {
    Color sdgColor(String sdg){
      if(!sdgs.contains(sdg)){
        return Colors.transparent;
      }else{
        return Color(0xffC9CCD5);
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('SDGs'),
        backgroundColor: Color.fromARGB(100, 157, 112, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text('Sélectionner les objectifs de développement', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('durable qui vous intéressent plus', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Text('Choisir entre 1 et 3 SDGs!', style: TextStyle(fontSize: 16)),
                    ),
                  ],
                ),
              ), // title
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if(!sdgs.contains("sdg_1")){
                                      sdgs.add("sdg_1");
                                    }
                                    else{
                                      sdgs.remove("sdg_1");
                                    }
                                  });
                                },
                                style: TextButton.styleFrom(
                                  backgroundColor: sdgColor("sdg_1")
                                ),
                                child: Image.asset('assets/sdgs/sdg_1.png', width: 120, height: 120),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    if(!sdgs.contains("sdg_2")){
                                      sdgs.add("sdg_2");
                                    }
                                    else{
                                      sdgs.remove("sdg_2");
                                    }
                                  });
                                },
                                style: TextButton.styleFrom(
                                    backgroundColor: sdgColor("sdg_2")
                                ),
                                child: Image.asset('assets/sdgs/sdg_2.png', width: 120, height: 120),
                              ),
                            )
                          ],
                        ),
                      ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_3")){
                              sdgs.add("sdg_3");
                            }
                            else{
                              sdgs.remove("sdg_3");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_3")
                        ),
                        child: Image.asset('assets/sdgs/sdg_3.png', width: 120, height: 120),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_4")){
                              sdgs.add("sdg_4");
                            }
                            else{
                              sdgs.remove("sdg_4");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_4")
                        ),
                        child: Image.asset('assets/sdgs/sdg_4.png', width: 120, height: 120),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_5")){
                              sdgs.add("sdg_5");
                            }
                            else{
                              sdgs.remove("sdg_5");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_5")
                        ),
                        child: Image.asset('assets/sdgs/sdg_5.png', width: 120, height: 120),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_6")){
                              sdgs.add("sdg_6");
                            }
                            else{
                              sdgs.remove("sdg_6");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_6")
                        ),
                        child: Image.asset('assets/sdgs/sdg_6.png', width: 120, height: 120),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_7")){
                              sdgs.add("sdg_7");
                            }
                            else{
                              sdgs.remove("sdg_7");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_7")
                        ),
                        child: Image.asset('assets/sdgs/sdg_7.png', width: 120, height: 120),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_8")){
                              sdgs.add("sdg_8");
                            }
                            else{
                              sdgs.remove("sdg_8");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_8")
                        ),
                        child: Image.asset('assets/sdgs/sdg_8.png', width: 120, height: 120),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_9")){
                              sdgs.add("sdg_9");
                            }
                            else{
                              sdgs.remove("sdg_9");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_9")
                        ),
                        child: Image.asset('assets/sdgs/sdg_9.png', width: 120, height: 120),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_10")){
                              sdgs.add("sdg_10");
                            }
                            else{
                              sdgs.remove("sdg_10");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_10")
                        ),
                        child: Image.asset('assets/sdgs/sdg_10.png', width: 120, height: 120),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_11")){
                              sdgs.add("sdg_11");
                            }
                            else{
                              sdgs.remove("sdg_11");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_11")
                        ),
                        child: Image.asset('assets/sdgs/sdg_11.png', width: 120, height: 120),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_12")){
                              sdgs.add("sdg_12");
                            }
                            else{
                              sdgs.remove("sdg_12");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_12")
                        ),
                        child: Image.asset('assets/sdgs/sdg_12.png', width: 120, height: 120),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_13")){
                              sdgs.add("sdg_13");
                            }
                            else{
                              sdgs.remove("sdg_13");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_13")
                        ),
                        child: Image.asset('assets/sdgs/sdg_13.png', width: 120, height: 120),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_14")){
                              sdgs.add("sdg_14");
                            }
                            else{
                              sdgs.remove("sdg_14");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_14")
                        ),
                        child: Image.asset('assets/sdgs/sdg_14.png', width: 120, height: 120),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_15")){
                              sdgs.add("sdg_15");
                            }
                            else{
                              sdgs.remove("sdg_15");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_15")
                        ),
                        child: Image.asset('assets/sdgs/sdg_15.png', width: 120, height: 120),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            if(!sdgs.contains("sdg_16")){
                              sdgs.add("sdg_16");
                            }
                            else{
                              sdgs.remove("sdg_16");
                            }
                          });
                        },
                        style: TextButton.styleFrom(
                            backgroundColor: sdgColor("sdg_16")
                        ),
                        child: Image.asset('assets/sdgs/sdg_16.png', width: 120, height: 120),
                      ),
                    )
                  ],
                ),
              ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      onPressed: () {
                        setState(() {
                          if(!sdgs.contains("sdg_17")){
                            sdgs.add("sdg_17");
                          }
                          else{
                            sdgs.remove("sdg_17");
                          }
                        });
                      },
                      style: TextButton.styleFrom(
                          backgroundColor: sdgColor("sdg_17")
                      ),
                      child: Image.asset('assets/sdgs/sdg_17.png', width: 120, height: 120),
                    )
                  ],
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 65, 0, 60),
                child: ElevatedButton(
                    child: Text("Continuer", style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(100, 157, 112, 255),
                      padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                    ),
                    onPressed: () {
                      setState(() {
                        if (sdgs.isEmpty) {
                          // If the form is valid, display a snackbar. In the real world,
                          // you'd often call a server or save the information in a database.
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Choisir au moins un objectif')),
                          );
                        }
                        else if (sdgs.length>3){
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Ne dépassez pas 3 choix')),
                          );
                        }
                        else{
                          if(sdgs.length==1){sdgs_counter=1;}
                          else if(sdgs.length==2){sdgs_counter=2;}
                          else{sdgs_counter=3;}
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Profil_description(nom: widget.nom, email: widget.email, password: widget.password, phone: widget.phone, date: widget.date, genre: widget.genre, univ: widget.univ, school: widget.school, branche: widget.branche, niveau: widget.niveau, etud_laureat: widget.etud_laureat, passions: widget.passions, counter: widget.counter, sdgs: sdgs, sdgs_counter: sdgs_counter)),
                        );
                        }
                      },
                      );}
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}