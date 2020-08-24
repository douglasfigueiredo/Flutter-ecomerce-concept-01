import 'package:ecommerce_concept_01/shared/components/actionsAppBar/actionsAppBar.dart';
import 'package:ecommerce_concept_01/shared/components/banner/banner_widget.dart';
import 'package:ecommerce_concept_01/shared/components/menuSideBar/menuSideBar.dart';
import 'package:ecommerce_concept_01/shared/components/products/products_grid_widget.dart';
import 'package:ecommerce_concept_01/shared/components/search/search_widget.dart';
import 'package:ecommerce_concept_01/shared/middle/title_middle_widget.dart';
import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: AppTheme.bgButtonColor,
      appBar: AppBar(
        elevation: 0,
        title: Text("eCommerce"),
        actions: [ActionsAppBar()],
        leading: IconButton(
          icon: Icon(
            MdiIcons.menu,
            size: 30,
            color: AppTheme.secondaryColor,
          ),
          onPressed: () {
            _scaffoldKey.currentState.openDrawer();
          },
        ),
      ),
      drawer: MenuSideBar(),
      body: ListView(
        padding: EdgeInsets.only(bottom: 40),
        shrinkWrap: true,
        children: [
          BannerWidget(
            alignTitle: "topRight",
            alignButton: "bottomRight",
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SearchWidget(),
          ),
          SizedBox(height: 40),
          TitleMiddleWidget(),
          SizedBox(height: 40),
          ProductsGridWidget(),
        ],
      ),
    );
  }
}
