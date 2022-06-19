import '/pages/inscriptionPages/parcours.dart';
import 'package:flutter/material.dart';

class NewUserInfo extends StatefulWidget {
  final String nom;
  final String email;
  final String password;
  NewUserInfo(
      {Key? key,
      required this.nom,
      required this.email,
      required this.password})
      : super(key: key);

  @override
  _NewUserInfoState createState() => _NewUserInfoState();
}

class _NewUserInfoState extends State<NewUserInfo> {
  String phone="";
  String genre="";
  DateTime? date;

  @override
  Widget build(BuildContext context) {
    TextEditingController _phoneController = new TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(100, 157, 112, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top:70),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Text('Informations personnelles ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ), // title

              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, top: 25, bottom: 37),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(40),
                    primary: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: (){
                    setState(() {
                      pickDate(context);
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(14, 16, 0, 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.date_range, color: Colors.black45),
                        SizedBox(width: 14),
                        Text(
                          date==null?"Date de naissance": '${date!.day}/${date!.month}/${date!.year}',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
              ), // birth date


              Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 30, 37),
                child: TextField(
                    onChanged: (value) {
                      phone = value ;
                    },
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.phone_outlined),
                      border: OutlineInputBorder(),
                      labelText: 'Téléphone',
                    ),
                    controller: _phoneController,
                  ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 200, left: 40, top: 5),
                child: Row(
                  children: const [
                    Icon(Icons.account_circle_outlined, color: Colors.black54, size: 28,),
                    SizedBox(width: 13),
                    Text("Vous êtes : ", style: TextStyle(
                        color: Colors.black54,
                        fontSize: 17
                    )),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 60, top: 15),
                child: Row(
                  children: <Widget>[
                    Radio(
                        value: "Femme",
                        groupValue: genre,
                        onChanged: (value){
                          setState(() {
                            genre=value as String;
                          });
                        }),
                    Text('Femme', style: TextStyle(fontSize: 15)),

                    SizedBox(width: 47),

                    Radio(
                        value: "Homme",
                        groupValue: genre,
                        onChanged: (value){
                          setState(() {
                            genre=value as String;
                          });
                        }),
                    Text('Homme', style: TextStyle(fontSize: 15))


                  ],
                ),
              ),



              SizedBox(height: 100),
              ElevatedButton(
                child: Text("Continuer", style: TextStyle(fontSize: 18)),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(100, 157, 112, 255),
                  padding: EdgeInsets.fromLTRB(100, 15, 100, 15),
                ),
                onPressed: () {
                  // phone = _phoneController.text;
                  if (phone.length >= 10 && date!=null && DateTime.now().year-date!.year > 13 && genre!="") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Parcours(
                              nom: widget.nom,
                              email: widget.email,
                              password: widget.password,
                              phone: phone,
                              date: date,
                              genre: genre)),
                    );
                  }
                  else if(phone==""){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Saisir votre numéro de téléphone')),
                    );
                  }
                  else if(phone.length<10){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Au moins 10 caractères dans le numéro de téléphone')),
                    );
                  }
                  else if(genre==""){
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Femme ou homme ?')),
                    );
                  }
                  else{
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Date de naissance ne doit pas être vide ou l\'age <=13 ans')),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future pickDate(BuildContext context) async {
    final initialDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: date ?? initialDate,
      firstDate: DateTime(DateTime.now().year - 70),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (newDate == null) return;

    setState(() => date = newDate);
  }
}

