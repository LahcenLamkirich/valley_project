import 'package:flutter/material.dart';


class ProgressDialog extends StatelessWidget {

  // la declaration du constructeur :
  final String msg ;
  ProgressDialog({required this.msg});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.deepPurpleAccent,
      child: Container(
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(10.0)
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: [
              SizedBox(width: 8.0,),
              CircularProgressIndicator(valueColor: AlwaysStoppedAnimation<Color>(Colors.black),),
              SizedBox(width: 26.0,),
              Text(
                msg,
                style: TextStyle(
                    color: Colors.black
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}