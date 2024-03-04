import 'package:flutter/material.dart';
import 'package:log_in_ui/Screen/discover.dart';
import 'package:log_in_ui/Screen/login.dart';
import 'package:log_in_ui/Screen/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Job Seeker UI",
      home: SignUp(),
    );
  }
}

//  LineChartWidget()
