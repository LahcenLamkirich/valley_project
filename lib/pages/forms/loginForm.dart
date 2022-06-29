import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:valleyproject/ExtrasWidgets/ProgressDialog.dart';
import 'package:valleyproject/pages/session/SkilledPerson/MainPage.dart';
// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final emailController = new TextEditingController();
  final mdpController = new TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          // Add TextFormFields and ElevatedButton here.
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 80, 30, 25),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adresse email',
              ),
              controller: emailController,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Taper votre email';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Mot de passe',
              ),
              controller: mdpController,
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Saisir votre mot de passe';
                }
                return null;
              },
            ),
          ),

          SizedBox(height: 7),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 170, 020),
            child: TextButton(
              onPressed: (){},
              child: Text(
                'Mot de passe oublié ?',
                style: TextStyle(
                  color: Color(0xff9D70FF),
                ),
              ),
            ),
          ),

          SizedBox(height: 75),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(100, 157, 112, 255),
              padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
            ),
            onPressed: () {
              // Validate returns true if the form is valid, or false otherwise.
              if (_formKey.currentState!.validate()) {
                // If the form is valid, display a snackbar. In the real world
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Email Or password Are not Correct !')),
                );
              }
            },
            child: GestureDetector(
              onTap: () {
               loginUser(context);
              },
              child: const Text(
                  'Se connecter',
                  style: TextStyle(fontSize: 18),
                ),
              )
          ),
        ],
      ),
    );
  }

  void showToastMessage(BuildContext context, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(label: 'UNDO', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }


  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  CollectionReference usersReference = FirebaseFirestore.instance.collection("users");


  void loginUser(BuildContext context) async {
    showDialog(
        context: context,
        builder: (BuildContext context){
          return ProgressDialog(msg: 'Authenticating ....');
        }
    );

    final User? firebaseUser = (await _firebaseAuth.
    signInWithEmailAndPassword(
        email: emailController.text,
        password: mdpController.text
    )).user;

    print("After Firebase User");

    if (firebaseUser != null) {
        usersReference.doc(firebaseUser.uid).get().then((DocumentSnapshot documentsnapshot) {
            if(documentsnapshot.exists) {
              print("You are Logged In My Brooo !!") ;
              Navigator.push(context, MaterialPageRoute(builder: (context) => new MainPage()));
            } else {
              print("Sooorry we do not have this email !");
            }
        });

      // usersReference.child(firebaseUser.uid).once().then((DatabaseEvent snap){
      //   print("What abt Here !");
      //   if(snap.snapshot.value != null){
      //     Navigator.pushNamedAndRemoveUntil(context, "mainPage", (route) => false);
      //     showToastMessage(context, "Logged Succesfully");
      //     print("And Here Again !!");
      //   }else {
      //     Navigator.pop(context);
      //     _firebaseAuth.signOut();
      //     showToastMessage(context, "You are not registered Yet !");
      //   }
      // });

      // } else {
      //   Navigator.pop(context);
      //   print("Show an Error !!");
      //   showToastMessage(context, "Error has Occured ");
      // }
    }
  }

}
