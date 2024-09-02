import 'package:flutter/material.dart';
import 'package:practise/screens/charge_rate.dart';

class LimitAndChargePage extends StatefulWidget {
  const LimitAndChargePage({super.key});

  @override
  State<LimitAndChargePage> createState() => LimitAndChargePageState();
}

class LimitAndChargePageState extends State<LimitAndChargePage>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  List<Tab> _tabs = [
    Tab(
      text: "CHARGES",
    ),
    Tab(
      text: "DAILY",
    ),
    Tab(
      text: "MONTHLY",
    ),
    Tab(
      text: "RANGES",
    )
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(Object context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Limit & Charge',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 5,
      ),
      body: Container(
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.green,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              controller: _tabController,
              tabs: _tabs,
              indicatorColor: Colors.green,
            ),
            Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ChargeRate(),
                Center(child: Text('DAILY content')),
                Center(child: Text('MONTHLY content')),
                Center(child: Text('RANGES content')),
              ],
            )
            )
          ],
        ),
      ),
    );
  }
}
