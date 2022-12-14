import 'package:empty_cart_page/dimensions.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function onTap;
  final String buttonText;
  final bool isBuy;
  final bool isBorder;
  CustomButton({this.onTap, @required this.buttonText, this.isBuy= false, this.isBorder = false});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
      child: Container(
        width: AppDimension.padding(figPadding: 120, context: context),
        height: AppDimension.padding(figPadding: 35, context: context),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.red.shade400,
            boxShadow: [
              BoxShadow(color: Colors.grey.withOpacity(0.2), spreadRadius: 1, blurRadius: 7, offset: const Offset(0, 1)), // changes position of shadow
            ],

            borderRadius: BorderRadius.circular(isBorder? AppDimension.padding(figPadding: 3, context: context) : AppDimension.padding(figPadding: 4, context: context))),
        child: Text(buttonText,
            style: TextStyle(
              fontSize: AppDimension.padding(figPadding: 9, context: context),
              color: Colors.white,
            )),
      ),
    );
  }
}