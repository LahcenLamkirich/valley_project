import 'package:flutter/Material.dart';

class Invitations extends StatefulWidget {
  const Invitations({Key? key}) : super(key: key);

  @override
  State<Invitations> createState() => _InvitationsState();
}

class _InvitationsState extends State<Invitations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Invitations'),
        centerTitle: true,
      ),
    );
  }
}
