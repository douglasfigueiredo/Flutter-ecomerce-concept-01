import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';

class TitleMiddleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: double.infinity,
          child: Text(
            "OUR POPULAR PRODUCTS",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 25),
          width: 80,
          decoration: BoxDecoration(
            border: Border.symmetric(
              vertical: BorderSide(
                color: AppTheme.textButtonExpandedColor,
                width: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
