import 'package:flutter/material.dart';

class MyTeam extends StatelessWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Team'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(22),
            height: MediaQuery.of(context).size.height*0.07,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyTeam()));
                },
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                textColor: Colors.white,
                child: const ListTile(
                  leading: Text("Porteur de Projet"),
                  trailing: Icon(Icons.arrow_forward_sharp),
                )
            ),
          ),
          SizedBox(height: 5,),
          Container(
            margin: const EdgeInsets.all(22),
            height: MediaQuery.of(context).size.height*0.2,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyTeam()));
                },
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                textColor: Colors.white,
                child: const ListTile(
                  leading:Text("Projet -Nom du projet"),
                  trailing: Icon(Icons.arrow_forward_sharp),
                )
            ),
          ),
          SizedBox(height: 5,),
          Container(
            margin: const EdgeInsets.all(22),
            height: MediaQuery.of(context).size.height*0.2,
            child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: const BorderSide(color: Colors.white)),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyTeam()));
                },
                padding: const EdgeInsets.all(10.0),
                color: Colors.white,
                textColor: Colors.white,
                child: const ListTile(
                  leading:Text("Membre de l'equipe"),
                  trailing: Icon(Icons.arrow_forward_sharp),
                )
            ),
          ),
        ],
      )
    );
  }
}
