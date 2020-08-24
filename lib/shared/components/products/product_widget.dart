import 'package:ecommerce_concept_01/shared/themes/theme.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String title;
  final String price;
  final String picture;

  const ProductWidget({Key key, this.title = "", this.price = "", this.picture})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: AppTheme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Image.asset(
                picture,
                fit: BoxFit.cover,
              ),
            ),
            if (title != null)
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: AppTheme.textButtonExpandedColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      onTap: () {},
    );
  }
}
