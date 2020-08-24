import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ActionsAppBar extends StatelessWidget {
  const ActionsAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            IconButton(
                icon: Icon(
                  MdiIcons.cart,
                  size: 28,
                  color: AppTheme.secondaryColor,
                ),
                onPressed: () {}),
            Positioned(
              top: 8,
              right: 0,
              child: Container(
                width: 20,
                height: 13,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  '3',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        RotatedBox(
          quarterTurns: 1,
          child: IconButton(
            icon: Icon(
              MdiIcons.tag,
              size: 28,
              color: AppTheme.secondaryColor,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
