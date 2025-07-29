import 'package:expensetracker/widgets/transactionTile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 150,
            backgroundColor: Colors.blue,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                double top = constraints.biggest.height;
                return FlexibleSpaceBar(
                  titlePadding: EdgeInsets.only(left: 16, bottom: 16),
                  title: top < 120
                      ? Text(
                          'Balance : 500',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            
                          ),
                          
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Date',
                              style: TextStyle(
                                fontSize: 12
                                ,
                                fontWeight: FontWeight.bold,
                                color: const Color.fromARGB(255, 254, 254, 254),
                              ),
                            ),
                            SizedBox(height: 6),
                            Text(
                              'Balance :500',
                              style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            SizedBox(height: 2),
                            Text(
                              'Income :2500',
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Text(
                              'Expense :2000',
                              style: TextStyle(
                                fontSize: 10,
                                color: const Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ],
                        ),
                  background: Container(
                    color: Colors.blue,
                  ),
                );
              },
            ),
          ),
          
          SliverToBoxAdapter(
            child: customTile(
              date: "29 July 2025",
              items: [
                {"icon": Icons.arrow_downward, "label": "Income", "value": "₹2500"},
                {"icon": Icons.arrow_upward, "label": "Expense", "value": "₹2000"},
                {"icon": Icons.account_balance_wallet, "label": "Balance", "value": "₹500"},
              ],
            ),        
          ),
          SliverToBoxAdapter(
            child: customTile(
              date: "29 July 2025",
              items: [
                {"icon": Icons.arrow_downward, "label": "Income", "value": "₹2500"},
                {"icon": Icons.arrow_upward, "label": "Expense", "value": "₹2000"},
                {"icon": Icons.account_balance_wallet, "label": "Balance", "value": "₹500"},
              ],
            ),        
          ),
          SliverToBoxAdapter(
            child: customTile(
              date: "29 July 2025",
              items: [
                {"icon": Icons.arrow_downward, "label": "Income", "value": "₹2500"},
                {"icon": Icons.arrow_upward, "label": "Expense", "value": "₹2000"},
                {"icon": Icons.account_balance_wallet, "label": "Balance", "value": "₹500"},
              ],
            ),        
          ),
        ],
      ),
      //bottomNavigationBar: BottomNavigationBar(items: items),
    );
  }
}
