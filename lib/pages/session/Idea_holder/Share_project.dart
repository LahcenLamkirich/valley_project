import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:valleyproject/pages/session/SkilledPerson/monEquipe.dart';

// This is the page that should be changed in the skill Person :
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
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            // here will contain the infos of the user :
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Lahcen Lamkirich", style: TextStyle(fontSize: 18, color: Colors.black),),
                SizedBox(width: 20,),
                Icon(Icons.exit_to_app_sharp)
              ],
            ),
            const SizedBox(height: 45,),
            Container(
              margin: const EdgeInsets.all(15),
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
                  leading: Text("Mon équipe"),
                  trailing: Icon(Icons.arrow_forward_sharp),
                )
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height*0.07,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.white)),
                  onPressed: () {},
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  textColor: Colors.white,
                  child: const ListTile(
                    leading: Text("Rejoindre une équipe "),
                    trailing: Icon(Icons.arrow_forward_sharp),
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height*0.07,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.white)),
                  onPressed: () {},
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  textColor: Colors.white,
                  child: const ListTile(
                    leading: Text("Notifications"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                  )
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height*0.07,
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: const BorderSide(color: Colors.white)),
                  onPressed: () {},
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.white,
                  textColor: Colors.white,
                  child: const ListTile(
                    leading: Text("Suivi des invitations envoyées"),
                    trailing: Icon(Icons.arrow_forward_sharp),
                  )
              ),
            ),
          ],
        )
      );
  }
}

