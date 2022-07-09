import 'package:flutter/Material.dart';

class Parametres extends StatefulWidget {
  const Parametres({Key? key}) : super(key: key);

  @override
  State<Parametres> createState() => _ParametresState();
}

class _ParametresState extends State<Parametres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Paramètres'),
        centerTitle: true,
      ),
    );
  }
}
