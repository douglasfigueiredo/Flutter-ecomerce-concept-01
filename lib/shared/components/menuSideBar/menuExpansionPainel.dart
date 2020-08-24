import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuExpansionTile extends StatefulWidget {
  final String title;
  final String iconName;
  final bool isInitalExpanded;
  final List<String> listViewData;

  const MenuExpansionTile(
      {Key key,
      this.listViewData,
      this.title,
      this.iconName,
      this.isInitalExpanded = false})
      : super(key: key);

  @override
  _MenuExpansionTileState createState() => _MenuExpansionTileState();
}

class _MenuExpansionTileState extends State<MenuExpansionTile> {
  bool setColor;
  @override
  void initState() {
    super.initState();
    setColor = widget.isInitalExpanded;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.only(bottom: 20),
        backgroundColor: AppTheme.bgButtonColor,
        leading: Container(
          width: 28,
          height: 28,
          child: SvgPicture.asset(
            'assets/icons/${widget.iconName}.svg',
            color: setColor ? AppTheme.accentColor : null,
          ),
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 16,
            color: AppTheme.textButtonMenuColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        children: widget.listViewData
            .map(
              (data) => ListTile(
                title: Text(
                  data,
                  style: TextStyle(
                    fontSize: 18,
                    color: AppTheme.textButtonExpandedColor,
                  ),
                ),
                contentPadding:
                    EdgeInsets.only(left: 100, bottom: -20, top: -20),
              ),
            )
            .toList(),
        initiallyExpanded: widget.isInitalExpanded,
        onExpansionChanged: (value) {
          setState(() => setColor = value);
        },
      ),
    );
  }
}
