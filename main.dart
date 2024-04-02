import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(

      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const HomePage(),
  ),);
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  late final TextEditingController _username;
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    // TODO: implement initState
    _username =TextEditingController();
    _email =TextEditingController();
    _password = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _username.dispose();
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _username,
            decoration: const InputDecoration(
              hintText: 'Enter your User Name Here'
            ),
          ),
          TextField(
            controller: _email,
            decoration: const InputDecoration(
              hintText: 'Enter your Email Here'
            ),
          ),
          TextField(
            controller: _password,
            decoration: const InputDecoration(
              hintText: 'Enter your Password Here'
            ),
          ),
          Center(
            child: TextButton(
              onPressed: () { },
              child: const Text('Register'),
            ),

          )
        ],
      ),
    );
  }
}

