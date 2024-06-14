import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/introPage.dart';
import 'package:my_app/main.dart';

class splashPage extends StatefulWidget{
  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 2),(){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
          return introPage();
        },));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('splash'),
      ),
      body: Column(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 50),),
            ),
          ),

        ],
      ),
    );
  }
}