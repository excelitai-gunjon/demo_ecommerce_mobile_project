import 'package:empty_cart_page/custom_button.dart';
import 'package:flutter/material.dart';
import 'dimensions.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,),
        title: const Text("Cart",
          style: TextStyle(
              color: Colors.black
          ),),
        backgroundColor: Colors.white70,
      ),
      body: Container(
          decoration: BoxDecoration(color: Colors.brown.shade50),
          child: Center(child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              // Icon
              Container(
                padding: EdgeInsets.all(AppDimension.padding(figPadding: 12, context: context)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(width: AppDimension.padding(figPadding: 2, context: context),
                      color: Colors.white),
                ),

                child: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black45,
                  size: AppDimension.padding(figPadding: 58, context: context),
                  
                ),
              ),
              
              // Padding
              SizedBox(height: AppDimension.padding(figPadding: 30, context: context),),

              // Text Major
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Your Cart is Empty',
                      style: TextStyle(
                          fontSize: AppDimension.width(figmaWidth: 14, context: context),
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ],
                ),
              ),

              // Padding
              SizedBox(height: AppDimension.padding(figPadding: 10, context: context),),

              // Text Minor
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Looks like you have not added anything, try adding to your cart',
                      style: TextStyle(
                          fontSize: AppDimension.width(figmaWidth: 8, context: context),
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ],
                ),
              ),

              // Padding
              SizedBox(height: AppDimension.padding(figPadding: 50, context: context),),

              // Button
              CustomButton(buttonText: "START SHOPPING"),

            ],
          )) ,
        ),

    );
  }
}
