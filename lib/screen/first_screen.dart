import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final name = TextEditingController();
  final palindrome = TextEditingController();
  final formkey = GlobalKey<FormState>();

  @override
  void dispose() {
    name.dispose();
    palindrome.dispose();
    super.dispose();
  }

  void reverseFunction(reverse) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50, bottom: 30),
                child: Icon(Icons.account_circle, size: 100),
              ),
              input(),
              button(),
            ],
          ),
        ),
      ),
    );
  }

  Widget input() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          TextFormField(
            controller: name,
            decoration: InputDecoration(
              hintText: "Name",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: palindrome,
            decoration: InputDecoration(
              hintText: "Palindrom",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget button() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                var text = palindrome.text;
                var reverse = text.split("").reversed.join("");

                if (text == reverse) {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text('Is palindrom'),
                    ),
                  );
                } else if (text != reverse) {
                  showDialog(
                    context: context,
                    builder: (context) => const AlertDialog(
                      content: Text('Not palindrom'),
                    ),
                  );
                }
              },
              child: const Text('Check'),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
            width: double.infinity,
            height: 40.0,
            child: ElevatedButton(
              onPressed: () {
                var value = name.text;
                Navigator.of(context).pushNamed('/second', arguments: value);
              },
              child: const Text('Next'),
            ),
          ),
        ],
      ),
    );
  }
}
