import 'package:ecommerce_concept_01/shared/components/custom_buttons/button_rounded_widget.dart';
import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String alignTitle;
  final String alignButton;

  const BannerWidget({
    Key key,
    this.title,
    this.subTitle,
    this.alignTitle = "center",
    this.alignButton = "center",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.scaffoldBackgroundColor,
        boxShadow: AppTheme.getShadow(color: Colors.grey[800], blurRadius: 5),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ImageWidget(),
          _getPosition(
            align: alignTitle,
            widget: TitleWidget(),
          ),
          _getPosition(
            align: alignButton,
            widget: ButtonWidget(),
          ),
        ],
      ),
    );
  }

  Widget _getPosition({Widget widget, String align}) {
    if (align == 'topLeft') {
      return Positioned(
        top: 20,
        left: 20,
        child: widget,
      );
    } else if (align == 'topRight') {
      return Positioned(
        top: 20,
        right: 20,
        child: widget,
      );
    } else if (align == 'bottomLeft') {
      return Positioned(
        bottom: 20,
        left: 20,
        child: widget,
      );
    } else if (align == 'bottomRight') {
      return Positioned(
        bottom: 20,
        right: 20,
        child: widget,
      );
    } else if (align == 'bottomCenter') {
      return Positioned(
        bottom: 20,
        child: widget,
      );
    } else if (align == 'topCenter') {
      return Positioned(
        top: 20,
        child: widget,
      );
    }
    return Positioned(
      child: widget,
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: Image.asset(
        'assets/images/banners/banner-home.jpg',
        alignment: Alignment.topLeft,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: ButtonRoundedWidget(
        title: "Discover",
        isUpperCase: true,
        fontSize: 14,
        color: AppTheme.accentColor,
        borderRadius: 5,
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "New Collection",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        Text(
          "Out now!",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
