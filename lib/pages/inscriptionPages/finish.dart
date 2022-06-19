import 'package:valleyproject/main.dart';
import 'package:flutter/material.dart';
import 'dart:io';

class Finish extends StatefulWidget {
  final String nom, email, password,genre, phone, univ, school, branche, niveau, etud_laureat, description;
  DateTime? date;
  final List <String> passions;
  final List <String> sdgs;
  int sdgs_counter;
  int counter;
  File? file;
  late String facebook;
  late String instagram;
  late String linkedIn;
  late String valueChoose;
  Finish({Key? key, required this.nom, required this.email, required this.password, required this.phone, required this.date, required this.genre, required this.univ, required this.school, required this.branche, required this.niveau, required this.etud_laureat, required this.passions, required this.counter, required this.sdgs, required this.sdgs_counter, required this.description, required this.file, required this.valueChoose, required this.facebook, required this.instagram, required this.linkedIn}) : super(key: key);

  @override
  _FinishState createState() => _FinishState();
}
class _FinishState extends State<Finish> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Color.fromARGB(100, 157, 112, 255),
      //   centerTitle: true,
      // ),
      backgroundColor: Color(0xffE1E8EB),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 90),
              CircleAvatar(
              radius: 75.0,
              backgroundImage: widget.file == null
                  ? AssetImage("assets/icon.jpg") as ImageProvider
                  : FileImage(File(widget.file!.path)) as ImageProvider,
              ),
              SizedBox(height: 20),
              Text(widget.nom +' | ' + widget.valueChoose, style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.school, color: Color(0xff7D64FF)),
                  SizedBox(width: 10),
                  Text(widget.school +' | ' + widget.univ, style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text('Description', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined, size: 18,))
                          ],
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(widget.description, style: TextStyle(fontSize: 14)),
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            Text('Passions', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            SizedBox(width: 20),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined, size: 18,))
                          ],
                        ),
                        SizedBox(height: 5),

                        // PASSIONS

                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              SizedBox(width: 10),
                              TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: Color(0xffD7C9EC),
                                  padding: EdgeInsets.fromLTRB(20, 0, 20, 0)
                                ),
                                onPressed: (){},
                                child: Text(widget.passions.first, style: TextStyle(color: Colors.black, fontSize: 13)),
                              ),
                              SizedBox(width: 25),
                              widget.counter>=2?
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      backgroundColor: Color(0xffD7C9EC),
                                        padding: EdgeInsets.fromLTRB(20, 3, 20, 3)
                                    ),
                                    onPressed: (){},
                                    child: Text(widget.passions[1], style: TextStyle(color: Colors.black, fontSize: 13)),
                                  ): SizedBox(width: 6),
                              SizedBox(width: 25),
                              widget.counter==3?
                              TextButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: Color(0xffD7C9EC),
                                    padding: EdgeInsets.fromLTRB(20, 3, 20, 3)
                                ),
                                onPressed: (){},
                                child: Text(widget.passions[2], style: TextStyle(color: Colors.black, fontSize: 13)),
                              ): SizedBox(width: 6)
                            ],
                          ),
                        ),

                        // SDGS

                        SizedBox(height: 30),
                        Row(
                          children: <Widget>[
                            Text('SDGS', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                            SizedBox(width: 40),
                            IconButton(onPressed: () {}, icon: Icon(Icons.add_box_outlined, size: 18,))
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            SizedBox(width: 4),
                            TextButton(
                              onPressed: () {},
                              child: Image.asset('assets/sdgs/${widget.sdgs.first}.png'),
                              style: TextButton.styleFrom(
                                fixedSize: Size.fromHeight(95),
                              ),
                            ),
                            SizedBox(width: 10),
                            widget.sdgs_counter>=2?TextButton(
                              onPressed: () {},
                              child:Image.asset('assets/sdgs/${widget.sdgs[1]}.png'),
                              style: TextButton.styleFrom(
                                fixedSize: Size.fromHeight(95),
                              ),
                            ):SizedBox(width: 6),
                            SizedBox(width: 10),
                            widget.sdgs_counter==3?TextButton(
                              onPressed: () {},
                              child:Image.asset('assets/sdgs/${widget.sdgs[2]}.png'),
                              style: TextButton.styleFrom(
                                fixedSize: Size.fromHeight(95),
                              ),
                            ):SizedBox(width: 6)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(widget.email),
              SizedBox(height: 20),
              Text(widget.password),
              SizedBox(height: 20),
              Text('${widget.date!.day}/${widget.date!.month}/${widget.date!.year}'),
              SizedBox(height: 20),
              Text(widget.phone),
              SizedBox(height: 20),
              Text(widget.genre),
              SizedBox(height: 20),
              Text(widget.etud_laureat),
              SizedBox(height: 20),
              Text(widget.branche),
              SizedBox(height: 20),
              Text(widget.niveau),
              SizedBox(height: 20),
              Text(widget.facebook + " " + widget.instagram + " " +widget.linkedIn),
            ],
          ),),
      )
    );
  }


}