import 'package:flutter/material.dart';
import 'package:networking_like_pro/screens/home_screen.dart';
import 'package:networking_like_pro/screens/home_screen_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeScreenViewModel(),
        )
      ],
      child: MaterialApp(
        title: 'Networking Example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeScreenView(),
      ),
    );
  }
}
