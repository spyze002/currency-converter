import 'package:flutter/material.dart';

class CurrencyPage extends StatelessWidget {
  const CurrencyPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "0",
              style: TextStyle(
                  fontSize: 49,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            TextField(
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: "Please enter the amount in XAF",
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                prefixIcon: Icon(Icons.monetization_on_outlined),
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2.0,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(60),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
