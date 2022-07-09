import 'package:flutter/material.dart';
import 'ChooseService.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profil_description extends StatefulWidget {
  final String nom, email, password, genre, phone, univ, school, branche, niveau, etud_laureat;
  DateTime? date;
  final List <String> passions;
  final List <String> sdgs;
  int sdgs_counter;
  int counter;
  Profil_description({Key? key, required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre, required this.univ, required this.school, required this.branche, required this.niveau, required this.etud_laureat, required this.passions,required this.counter, required this.sdgs, required this.sdgs_counter}) : super(key: key);

  @override
  _Profil_descriptionState createState() => _Profil_descriptionState();
}
class _Profil_descriptionState extends State<Profil_description> {
  late String description;
  File? _file ;
  Future pickerCamera() async {
    final myFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _file = File(myFile!.path);
    });
  }
  @override
  Widget build(BuildContext context) {
    TextEditingController _descController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(100, 157, 112, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                // child: _file == null ? Image.asset('assets/icon1.jpg', height: 180, width: 180) : Image.file(_file!, height: 180, width: 180),
                child: CircleAvatar(
                  radius: 90.0,
                  backgroundImage: _file == null
                      ? AssetImage("assets/icon1.jpg") as ImageProvider
                      : FileImage(File(_file!.path)) as ImageProvider,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 8, 0),
                    child: Center(child: Text('Photo de profil')),
                  ),
                  Center(child: IconButton(onPressed: pickerCamera, icon: Icon(Icons.add_a_photo_outlined, size: 36, color: Color(0xff93B8EF)))),
                ],
              ),
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Text(widget.nom, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Color(0xff93B8EF))),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  minLines: 1,
                  maxLines: 8,
                  decoration: const InputDecoration(
                    hintText: ("Ajouter une petite description sur vous!"),
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color(0xff93B8EF), width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide:
                      BorderSide(color: Color.fromARGB(100, 157, 112, 255), width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(6.0)),
                    ),
                  ),
                  controller: _descController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                child: ElevatedButton(
                    child: Text("Terminer", style: TextStyle(fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(100, 157, 112, 255),
                      padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                    ),
                    onPressed: () {
                      description = _descController.text;
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChooseService(nom: widget.nom, email: widget.email, password: widget.password, phone: widget.phone, date: widget.date, genre: widget.genre, univ: widget.univ, school: widget.school, branche: widget.branche, niveau: widget.niveau, etud_laureat: widget.etud_laureat,passions: widget.passions,counter: widget.counter, sdgs: widget.sdgs, sdgs_counter: widget.sdgs_counter,description: description, file: _file)),
                      );
                      }

                ),
              )
            ],
          ),
        ),
        ),
      );
  }
}