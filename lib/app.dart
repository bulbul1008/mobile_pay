import 'package:flutter/material.dart';
import 'package:mobile_pay/core/widgets/mobile_pay_app_bar.dart';
import 'package:mobile_pay/core/widgets/quick_actions_card.dart';
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              WalletBalanceCard(balance: 100000),
              SizedBox(height: 30),
              Text("Quick Actions"),
              SizedBox(height: 20),
              Row(
                children: [
                  QuickActionCard(
                    icon: Icons.money,
                    iconColor: Colors.green,
                    iconBackground: Colors.greenAccent,
                    label: "Add Money",
                    onTap: () {},
                  ),
                  SizedBox(width: 20),
                  QuickActionCard(
                    icon: Icons.people,
                    iconColor: Colors.orange,
                    iconBackground: Colors.orange.shade100,
                    label: "KYC",
                    onTap: () {},
                  ),
                  const SizedBox(width: 20),
                  QuickActionCard(
                    icon: Icons.transfer_within_a_station,
                    iconColor: Colors.deepPurpleAccent,
                    iconBackground: Colors.purple.shade100,
                    label: "Recent Transactions",
                    onTap: (){

                    },
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
