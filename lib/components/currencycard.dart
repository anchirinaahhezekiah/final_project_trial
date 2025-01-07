import 'package:flutter/material.dart';

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
