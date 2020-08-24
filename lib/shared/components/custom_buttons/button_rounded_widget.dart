import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonRoundedWidget extends StatelessWidget {
  final String title;
  final double borderRadius;
  final double paddingV;
  final double paddingH;
  final double paddingC;
  final double fontSize;
  final Color color;
  final Color textColor;
  final bool isUpperCase;
  final IconData iconLeft;
  final IconData iconRight;
  final List<BoxShadow> shadow;

  const ButtonRoundedWidget(
      {Key key,
      this.borderRadius = 0.0,
      this.color,
      this.textColor,
      this.fontSize = 14,
      this.isUpperCase = false,
      this.title = 'Custom Button',
      this.paddingV = 0.0,
      this.paddingH = 0.0,
      this.paddingC = 0.0,
      this.iconLeft,
      this.iconRight,
      this.shadow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          width: double.infinity,
          height: double.infinity,
          padding:
              EdgeInsets.symmetric(horizontal: paddingH, vertical: paddingV),
          decoration: BoxDecoration(
            color: color != null ? color : AppTheme.accentColor,
            borderRadius: BorderRadius.circular(borderRadius),
            boxShadow: shadow,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconLeft != null)
                Flexible(
                  flex: 1,
                  child: Icon(iconLeft),
                ),
              Flexible(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: paddingC),
                  child: Text(
                    '${isUpperCase ? title.toUpperCase() : title.toLowerCase()}',
                    style: TextStyle(
                      color: textColor != null ? color : Colors.white,
                      fontSize: fontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              if (iconRight != null)
                Flexible(
                  flex: 1,
                  child: Icon(iconRight),
                ),
            ],
          )),
      onTap: () {},
    );
  }
}
