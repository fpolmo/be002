import 'package:be002/Pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return
     MaterialApp(

        title: 'Be002 Spp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),

        initialRoute: 'home',

        routes: {
          'home': (context) => HomePage()
        },

      );

  }
}
