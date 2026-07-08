import 'package:flutter/material.dart';
import 'package:mobile_pay/core/widgets/mobile_pay_app_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: Scaffold(
        appBar: MobilePayAppBar(),
        body: Center(
          child: Text("Hello bangldesh"),
        ),
      ),
    );

  }
}

