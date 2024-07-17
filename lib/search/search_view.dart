import 'package:assignment/generated/assets.dart';
import 'package:assignment/style/styles.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  final String assetsUrl, title, points, measurement;
  const SearchView(
      {super.key,
      required this.assetsUrl,
      required this.title, required this.points, required this.measurement});


  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getScreenWidth(context) * 0.01),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                assetsUrl,
                height: 120,
                width: 120,
              ),
            ),

            Text(
              title,
              style: headLine3TextStyleFontSize12(kColorCode000000),
            ),

            Text(
              points,
              style: headLine3TextStyleFontSize12(kColorCodeABABAB),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  measurement,
                  style: headLine3TextStyleFontSize12(kColorCodeABABAB),
                ),

                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    Assets.iconsIcShape,
                    height: 20,
                    width: 20,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
