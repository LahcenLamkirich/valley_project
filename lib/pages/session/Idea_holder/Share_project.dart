import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


// this is the page that should be changed in the skill Person :

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
      return const Center(
        child: Text("Hello our skills Person "),
      );
  }
}

