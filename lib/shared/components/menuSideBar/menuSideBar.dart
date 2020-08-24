import 'package:ecommerce_concept_01/shared/components/menuSideBar/menuButton.dart';
import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'menuExpansionPainel.dart';

class MenuSideBar extends StatelessWidget {
  static final List<String> _listViewData = [
    "Sneakers",
    "Sandals",
    "Boots",
    "Slippers",
  ];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Flexible(
            flex: 0,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: AppTheme.secondaryHeaderColor,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You looking for?",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppTheme.textButtonColor,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppTheme.secondaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "MAN",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppTheme.textButtonColor),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      SizedBox(width: 20),
                      Flexible(
                        child: GestureDetector(
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: AppTheme.secondaryColor,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "WOMAN",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: AppTheme.textButtonColor),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: ListView(
              padding: EdgeInsets.only(top: 0),
              children: [
                MenuExpansionTile(
                  title: "CLOTHINGS",
                  iconName: 'clothings',
                  listViewData: _listViewData,
                ),
                MenuExpansionTile(
                  title: "SHOES",
                  iconName: 'shoes',
                  isInitalExpanded: false,
                  listViewData: _listViewData,
                ),
                MenuExpansionTile(
                  title: "SPORTS",
                  iconName: 'sports',
                  listViewData: _listViewData,
                ),
                MenuExpansionTile(
                  title: "BAGS & ACCESSORY",
                  iconName: 'bags_accessory',
                  listViewData: _listViewData,
                ),
                Divider(
                  color: AppTheme.textButtonMenuColor,
                  height: 40,
                  indent: 20,
                  endIndent: 20,
                ),
                MenuButtonWidget(
                  title: 'ACCOUNT',
                  icon: Icon(
                    MdiIcons.account,
                    color: AppTheme.textButtonExpandedColor,
                    size: 30,
                  ),
                ),
                MenuButtonWidget(
                  title: 'SETTINGS',
                  icon: Icon(
                    Icons.settings,
                    color: AppTheme.textButtonExpandedColor,
                    size: 28,
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
