import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:todo_list/todo_list.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late int counter = 0;
  Random rnd = Random();
  late String saying = '';

  List<String> sayings = [
    "#Markhor🦌",
    "#MeTheLoneWolf🐺",
    "#thuglife☠️👽⚔️🔪⛓",
    "#nothingbox🙇🤷🏽‍♂️🕸🎁",
    "#hakunamatata🐅",
    "#maulahjat🏋🏾‍⚔",
    "#deadman💀⚰️",
    "#deadwillriseagain⚔",
    "#istandalone👑",
    "#istandaloneforjustic🐅☘️",
    "#nøfate⚓️🚀⚰️",
    "#bornfreeandwild👅💪",
    "#bornfreeandlivefree🐅🐆🐈",
    "#brutaltactician🎖",
    "#holysinner🕊",
    "#devilhunter😇",
    "#khalaimakhlooq👻☠️😈🦅👽",
    "#aakhrichittan👻🚶🏽‍♂️🦁🐆🐅🌊🧗🏼‍♂️🥇🎖🏆🗻",
    "#KoiJalGiaKisiNayDuaDi👤🔥🎃☠️🤯😇🙏📦",
    "#ZakhmiDillJallaDon🤦🏻‍♂️🤕🔥💔👿☠️👻",
    "#WhatHappensToTheSoulsWhoLookInTheEyesOfDragon🦖🐉☃️🌊⛈💥🔥🌪🐲☠️👻"
  ];

  void loadingStatus(){
    Future.delayed(const Duration(seconds: 1)).then((_){
      setState(() {
        counter = counter+25;
        saying = sayings[rnd.nextInt(13)];
      });
      loadingStatus();
    });

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadingStatus();
    Timer(const Duration(seconds: 4),()=>
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const TodoList()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'),
                fit: BoxFit.fill
            )
        ),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Card(
                  elevation: 10,
                  color: Colors.black.withOpacity(0.7),
                  child: Padding(padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(
                          backgroundColor: Colors.yellow,
                        ),
                        const SizedBox(height: 10,),
                        Text(saying),
                        const SizedBox(height: 10,),
                        Text('$counter %')
                      ],
                    ),
                  ),
                )
              ]
          ),
        ),
      ),
    );
  }
}