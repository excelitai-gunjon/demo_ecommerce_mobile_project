import 'package:flutter/material.dart';
import 'DeliveryDetails.dart';


class Checkout extends StatelessWidget {
  const Checkout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
        title: const Text("Checkout",
        style: TextStyle(
          color: Colors.black
        ),),
        backgroundColor: Colors.white70,

      ),
      body: ListView(
        children: [
            DeliveryDetails(),

        ],
      ),
    );
  }
}
