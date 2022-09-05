import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class PlantCard extends StatelessWidget {
  const PlantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 160,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/kaktus6.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: defaultMargin,
              top: 104,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Home Plants',
                  style: whiteTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  '68 Types of Plants',
                  style: whiteTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: regular,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
