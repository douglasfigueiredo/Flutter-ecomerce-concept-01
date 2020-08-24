import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MenuButtonWidget extends StatelessWidget {
  final String title;
  final Widget icon;

  const MenuButtonWidget({Key key, this.title, this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: icon,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                color: AppTheme.textButtonMenuColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
