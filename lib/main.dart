import 'package:flutter/material.dart';
import 'package:flutter_bloc_freezed_injectable/injection.dart';
import 'package:flutter_bloc_freezed_injectable/pages/sign_in/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc_freezed_injectable/pages/start/start_page.dart';

void main() async {
  //Here we need to initializer the App
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
