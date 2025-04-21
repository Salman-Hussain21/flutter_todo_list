import 'package:flutter/material.dart';
import 'package:todo_list/splash_page.dart';

void main()=>runApp(MaterialApp(
  home: const SplashPage(),
  title: 'Todo List',
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
      primarySwatch: Colors.blueGrey,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      textTheme:  const TextTheme(
        titleMedium: TextStyle(color: Colors.amber,fontFamily: "Gothic"),
        bodyMedium: TextStyle(color: Colors.green,fontFamily: "Gothic"),
      ),
      listTileTheme: const ListTileThemeData(iconColor: Colors.yellowAccent,)
  ),
));