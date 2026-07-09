import 'package:flutter/material.dart';
import 'package:mobile_pay/core/widgets/mobile_pay_app_bar.dart';
import 'package:mobile_pay/core/widgets/transactions_card.dart';
import 'package:mobile_pay/core/widgets/wallet_balance_card.dart';

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
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              WalletBalanceCard(balance: 100000),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
