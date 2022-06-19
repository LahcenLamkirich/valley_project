import 'package:flutter/material.dart';
import '/pages/inscriptionPages/info_personnel.dart';

class NewUser extends StatefulWidget {
  @override
  _NewUserState createState() => _NewUserState();
}

class _NewUserState extends State<NewUser> {
  late String nom;
  late String email;
  late String password;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController _nameController = new TextEditingController();
    TextEditingController _emailController = new TextEditingController();
    TextEditingController _mdpController = new TextEditingController();
    TextEditingController _mdp2 = new TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(100, 157, 112, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 0, bottom: 60),
                  child: Text('Mon compte ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 25),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Nom complet',
                    ),
                    controller: _nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Taper votre nom complet';
                      } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                        return 'Nom n\'est pas valide';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(),
                      labelText: 'Adresse email',
                    ),
                    controller: _emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Taper votre email';
                      } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                          .hasMatch(value)) {
                        return 'Email n\'est pas valide';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                    controller: _mdpController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Saisir un mot de passe';
                      } else if (!RegExp(r'[\w-@]').hasMatch(value)) {
                        return 'Au moins 6 caractères, un majuscule et un nombre';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      border: OutlineInputBorder(),
                      labelText: 'Confirmer le mot de passe',
                    ),
                    controller: _mdp2,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Réécrire le mot de passe';
                      } else if (value != _mdpController.text) {
                        return 'Le mot de passe n\'est pas correct';
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    child: Text("Continuer", style: TextStyle(fontSize: 18)),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(100, 157, 112, 255),
                      padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        nom = _nameController.text;
                        email = _emailController.text;
                        password = _mdpController.text;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NewUserInfo(
                                  nom: nom, email: email, password: password)),
                        );
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
