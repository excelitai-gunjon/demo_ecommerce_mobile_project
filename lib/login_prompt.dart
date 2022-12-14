import 'package:empty_cart_page/custom_button.dart';
import 'package:flutter/material.dart';
import 'dimensions.dart';

class LoginPrompt extends StatelessWidget {
  const LoginPrompt({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.white,),
        title: const Text("",
          style: TextStyle(
              color: Colors.white
          ),),
        backgroundColor: Colors.red.shade400,
      ),
      body: Container(

        decoration: BoxDecoration(color: Colors.brown.shade50),
        child: Center(child:
        Container(
          height: AppDimension.padding(figPadding: 400, context: context),
          width: AppDimension.padding(figPadding: 330, context: context),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppDimension.padding(figPadding: 8, context: context)),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurStyle: BlurStyle.normal,
                spreadRadius: -15,
                blurRadius: 20,
                offset: Offset(-5.0, 20.0),
              ),

            ]
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              // Padding
              SizedBox(height: AppDimension.padding(figPadding: 10, context: context),),

              // Text Major
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text('You must be logged in to access this functionality.',
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                        fontSize: AppDimension.width(figmaWidth: 14, context: context),
                        fontWeight: FontWeight.normal,
                        color: Colors.red.shade400),
                  ),
                ),


              // Padding
              SizedBox(height: AppDimension.padding(figPadding: 10, context: context),),

              // Picture
              // Container(
              //   padding: EdgeInsets.all(AppDimension.padding(figPadding: 12, context: context)),
              //   decoration: BoxDecoration(
              //     color: Colors.red,
              //     borderRadius: BorderRadius.circular(100),
              //     border: Border.all(width: AppDimension.padding(figPadding: 2, context: context),
              //         color: Colors.white),
              //   ),
              //
              //   child: Icon(
              //     Icons.shopping_cart_outlined,
              //     color: Colors.black45,
              //     size: AppDimension.padding(figPadding: 58, context: context),
              //
              //   ),
              // ),
              Image.asset(
                "assets/images/food.png",
                width: AppDimension.padding(figPadding: 150,context: context),
                height: AppDimension.padding(figPadding: 150,context: context),
              ),


              // Padding
              SizedBox(height: AppDimension.padding(figPadding: 40, context: context),),

              // Button
              CustomButton(buttonText: "LOGIN / SIGN UP"),

              // Padding
              SizedBox(height: AppDimension.padding(figPadding: 30, context: context),),

            ],
          ),
        )) ,
      ),

    );
  }
}
