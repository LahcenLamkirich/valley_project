import 'package:valleyproject/pages/session/ChooseService.dart';
import 'package:valleyproject/pages/session/Idea_holder/MenuPage.dart';
import 'package:valleyproject/pages/session/Idea_holder/Share_project.dart';
import 'package:valleyproject/pages/session/SkilledPerson/MainPage.dart';
import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'pages/Connect.dart';
import 'pages/pagesExplicatifs/expliquer1.dart';
import 'pages/pagesExplicatifs/expliquer2.dart';
import 'pages/pagesExplicatifs/expliquer3.dart';
import 'pages/pagesExplicatifs/expliquer4.dart';
import 'pages/inscriptionPages/compte.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    // ignore: unused_local_variable
    final args = settings.arguments;

    switch (settings.name) {
      case '/home':
        return MaterialPageRoute(builder: (_) => Home());
      case '/connexion':
        return MaterialPageRoute(builder: (_) => Connect());
      case '/pagesExplicatifs/expliquer1.dart':
        return MaterialPageRoute(builder: (_) => Interface1());
      case '/pagesExplicatifs/expliquer2.dart':
        return MaterialPageRoute(builder: (_) => Interface2());
      case '/pagesExplicatifs/expliquer3.dart':
        return MaterialPageRoute(builder: (_) => Interface3());
      case '/pagesExplicatifs/expliquer4.dart':
        return MaterialPageRoute(builder: (_) => Interface4());
      case '/pages/inscriptionPages/compte.dart':
        return MaterialPageRoute(builder: (_) => NewUser());
      case '/chooseService':
      return MaterialPageRoute(builder: (_) => ChooseService());
      case '/shareproject':
        return MaterialPageRoute(builder: (_) => Share_project());
      case '/menuPage':
        return MaterialPageRoute(builder: (_) => MenuPage());
      case '/MainPageTalent':
        return MaterialPageRoute(builder: (_) => MainPage());
      // Validation of correct data type
      //   if (args is Utilisateur) {
      //     return MaterialPageRoute(
      //       builder: (_) => NewUser(),
      //     );
      //   }
      //   // If args is not of the correct type, return an error page.
      //   // You can also throw an exception while in development.
      //   return _errorRoute();

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
