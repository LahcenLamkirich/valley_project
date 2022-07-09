import 'package:valleyproject/pages/session/Idea_holder/Share_project.dart';
import 'package:valleyproject/pages/session/Idea_holder/widgets/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

class HomePageSkill extends StatefulWidget {
  final VoidCallback openDrawer;
  const HomePageSkill({
    Key? key,
    required this.openDrawer,
  }) : super(key: key);

  @override
  State<HomePageSkill> createState() => _HomePageSkillState();
}

class _HomePageSkillState extends State<HomePageSkill> {
  int index=0;

  final screens = [
    Share_project(),
    Center(child: Text('Profiles', style: TextStyle(fontSize: 50))),
    Center(child: Text('Messages', style: TextStyle(fontSize: 50))),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
    body: Scaffold(
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500)
          )
        ),
        child: NavigationBar(
          height: 60,
          backgroundColor: Color(0xFFf1f5fb),
          selectedIndex: index,
          onDestinationSelected: (index) => setState(() {
            this.index=index;
          }),
          destinations: const [
            NavigationDestination(
                icon: Image(image: AssetImage("assets/logo 1.png")),
                label: 'Accueil',
            ),
            NavigationDestination(
                icon: Icon(Icons.person_search),
                label: 'Explore profiles'
            ),
            NavigationDestination(
                icon: Icon(Icons.messenger),
                label: 'Messages'
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: [
                screens[index]
              ],
            )
          ],
        ),
      ),
    )
  );
}
