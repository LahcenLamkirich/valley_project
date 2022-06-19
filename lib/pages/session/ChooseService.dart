import 'package:flutter/material.dart';

class ChooseService extends StatefulWidget {
  const ChooseService({Key? key}) : super(key: key);

  @override
  State<ChooseService> createState() => _ChooseServiceState();
}

class _ChooseServiceState extends State<ChooseService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 100),
                Center(
                  child: Column(
                    children: [
                      Text("Commencer à", style: TextStyle(fontSize: 25)),
                      Text("construire votre équipe", style: TextStyle(fontSize: 25))
                    ],
                  ),
                ),
                Center(
                  child: Image.asset('assets/team.gif'),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                    child: Text(" J’ai une idée de projet ", style: TextStyle(fontSize: 18, color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffFFD035),
                      padding: EdgeInsets.fromLTRB(35, 20, 35, 20),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/shareproject');
                    }
                ),
                SizedBox(height: 30),
                ElevatedButton(
                    child: Text(" J’ai le savoir-faire ", style: TextStyle(fontSize: 18, color: Colors.black)),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff9D70FF),
                      padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/MainPageTalent');
                    }
                )
              ],
            ),
        )
    );
  }
}
