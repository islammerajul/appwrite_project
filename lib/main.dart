import 'package:appwrite_project/screens/login_screen.dart';
import 'package:appwrite_project/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:appwrite/appwrite.dart';

Client client = Client();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  client
      .setEndpoint('http://154.26.128.15:8081/v1')
      .setProject('641842074adc72d97413')
      .setSelfSigned(status: true);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpScreen(),
    );
  }
}
