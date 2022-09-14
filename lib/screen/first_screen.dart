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
              const Icon(Icons.account_circle, size: 50),
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "Name",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              TextFormField(
                controller: palindrome,
                decoration: InputDecoration(
                  hintText: "Palindrom",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              ElevatedButton(
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
                  } else {
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
              ElevatedButton(
                onPressed: () {},
                child: const Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
