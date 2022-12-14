import 'package:empty_cart_page/checkout_page/Checkout.dart';
import 'package:empty_cart_page/empty_cart.dart';
import 'package:empty_cart_page/login_prompt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contribution to ecommerce app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPrompt(),
      // const LoginPrompt()
      // const Checkout(),
      // const EmptyCart(),
    );
  }
}