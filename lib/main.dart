import 'package:flutter/material.dart';
import 'package:flutter_bloc_freezed_injectable/injection.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter_bloc_freezed_injectable/pages/start/start_page.dart';

void main() async {
  //Here we need to initializer the App, 
  //with Firebase.initializeApp() because 
  //all packages from firebase had been updated!! so they 
  //need to put here this commands
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      home: StartPage(),
    
    );
  }
}
