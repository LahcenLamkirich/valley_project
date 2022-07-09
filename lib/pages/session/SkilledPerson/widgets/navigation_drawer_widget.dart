import 'package:valleyproject/pages/session/Idea_holder/barPages/favoris_page.dart';
import 'package:valleyproject/pages/session/Idea_holder/barPages/invitations_page.dart';
import 'package:valleyproject/pages/session/Idea_holder/barPages/notifications_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../barPages/parametres_page.dart';
import '../barPages/profile_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  final padding = const EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.deepPurple,
        child: ListView(
          padding: padding,
          children: <Widget>[
            const SizedBox(height: 50),
            buildMenuItem(
              text: 'Profil',
              icon: FontAwesomeIcons.userLarge,
              onClicked: () => selectedItem(context, 0),
            ),
            const SizedBox(height: 25),
            buildMenuItem(
              text: 'Notifications',
              icon: Icons.notifications,
              onClicked: () => selectedItem(context, 1),
            ),
            const SizedBox(height: 25),
            buildMenuItem(
              text: 'Favoris',
              icon: Icons.favorite,
              onClicked: () => selectedItem(context, 2),
            ),
            const SizedBox(height: 25),
            buildMenuItem(
              text: 'Invitations envoyés',
              icon: Icons.insert_invitation,
              onClicked: () => selectedItem(context, 3),
            ),
            const SizedBox(height: 25),
            const Divider(color: Colors.white70),
            const SizedBox(height: 25),
            buildMenuItem(
              text: 'Paramètres',
              icon: Icons.settings,
              onClicked: () => selectedItem(context, 4),
            ),
            const SizedBox(height: 25),
            buildMenuItem(
              text: 'Déconnexion',
              icon: Icons.logout,
              onClicked: () => selectedItem(context, 5),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color)),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.of(context).pop();
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Notifications(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Favoris(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Invitations(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => Parametres(),
        ));
        break;
      case 5:
        print("Logout");
        break;
    }
  }
}
