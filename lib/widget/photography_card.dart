import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class PhotographyCard extends StatelessWidget {
  String? type;
  String? image;
  PhotographyCard({this.type, this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 126,
      height: 144,
      margin: EdgeInsets.only(right: 17),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              image.toString(),
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100),
            width: 50,
            height: 20,
            decoration: BoxDecoration(
              color: whiteColor.withOpacity(0.6),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
            ),
            child: Container(
              alignment: Alignment.center,
              child: Text(
                type.toString(),
                style: secondaryTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: medium,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
