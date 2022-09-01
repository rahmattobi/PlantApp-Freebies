import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class SliderPage extends StatelessWidget {
  String image;
  String title;
  String description;

  SliderPage(
    this.image,
    this.title,
    this.description,
  );

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: width * 0.6,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 19,
              fontWeight: bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: subtitleTextStyle.copyWith(
              fontSize: 13,
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
