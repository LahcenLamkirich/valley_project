import 'package:flutter/material.dart';

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
                  const SnackBar(content: Text('Processing Data')),
                );
              }
            },
            child: const Text(
              'Se connecter',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

}
