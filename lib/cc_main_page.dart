import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AppStartE extends StatefulWidget {
  const AppStartE({super.key});

  @override
  State<AppStartE> createState() {
    return _AppStartE();
  }
}

class _AppStartE extends State<AppStartE> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: Colors.black),
    );

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text("Currency Converter"),
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 18.00,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: textEditingController,
                decoration: const InputDecoration(
                  hintText: "Enter the amount in USD",
                  hintStyle: TextStyle(color: Colors.black),
                  prefixIcon: Icon(
                    Icons.monetization_on_outlined,
                    color: Colors.black,
                  ),
                  enabledBorder: borderStyle,
                  focusedBorder: borderStyle,
                ),
                style: const TextStyle(
                  color: Colors.black,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (kDebugMode) {
                    print("Button Pressed");
                    print(result);
                  }
                  setState(() {
                    result = double.parse(textEditingController.text) * 83.17;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    textStyle: const TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                child: const Text(
                  "Convert",
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
