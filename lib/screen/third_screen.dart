import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_app/provider/user_provider.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      final prov = Provider.of<UserProvider>(context, listen: false);
      // fetch contacts data
      prov.getUser();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Screen'),
        elevation: 0,
        centerTitle: true,
      ),
      body: Consumer<UserProvider>(
        builder: (BuildContext context, UserProvider provider, Widget? _) {
          if (provider.userData.isEmpty) {
            return const Padding(
              padding: EdgeInsets.only(top: 70.0),
              child: Center(
                child: Text('No have data'),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: provider.userData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.account_circle),
                  title: Text(provider.userData[index].name!),
                  subtitle: Text(provider.userData[index].email!),
                );
              },
            );
          }
        },
      ),
    );
  }
}


/*

child: ListView(
            shrinkWrap: true,
            children: const [
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Ramadhani Alfarizi'),
                subtitle: Text('attendance'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Ramadhani Alfarizi'),
                subtitle: Text('attendance'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Ramadhani Alfarizi'),
                subtitle: Text('attendance'),
              ),
            ],
          ),

 */