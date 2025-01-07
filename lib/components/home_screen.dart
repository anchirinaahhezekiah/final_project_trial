import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Forex Dashboard'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Live Currency Rates',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 1,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CurrencyCard(currencyPair: 'USD/EUR', rate: '1.12'),
                  CurrencyCard(currencyPair: 'GBP/USD', rate: '1.35'),
                  CurrencyCard(currencyPair: 'USD/JPY', rate: '114.55'),
                  CurrencyCard(currencyPair: 'AUD/USD', rate: '0.75'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Candlestick Chart',
              style: TextStyle(
                color: Colors.amber,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey[700],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Candlestick Chart Placeholder',
                    style: TextStyle(color: Colors.white70),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blueGrey[800],
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white70,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Alerts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class CurrencyCard extends StatelessWidget {
  final String currencyPair;
  final String rate;

  const CurrencyCard({
    required this.currencyPair,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            currencyPair,
            style: TextStyle(
              color: Colors.amber,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5),
          Text(
            rate,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
