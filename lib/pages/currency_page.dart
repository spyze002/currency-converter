// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyPagePage extends StatefulWidget {
  const CurrencyPagePage({super.key});
  @override
  State<CurrencyPagePage> createState() => _CurrencyConverter();
}

class _CurrencyConverter extends State<CurrencyPagePage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const mainBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "XAF ${result.toString()}",
              style: const TextStyle(
                  fontSize: 49,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  hintText: "Please enter the amount in XAF",
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on_outlined),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: mainBorder,
                  enabledBorder: mainBorder,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 592.25;
                  });
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(
                    double.infinity,
                    50,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
