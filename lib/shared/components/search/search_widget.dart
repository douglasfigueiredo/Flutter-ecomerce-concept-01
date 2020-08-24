import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SearchWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor,
        borderRadius: BorderRadius.circular(5),
        boxShadow:
            AppTheme.getShadow(color: Colors.grey[500], blurRadius: 2, dy: 2),
      ),
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            FeatherIcons.search,
            size: 25,
            color: AppTheme.textButtonExpandedColor,
          ),
          hintText: "Search a item..",
          hintStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppTheme.textButtonExpandedColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
