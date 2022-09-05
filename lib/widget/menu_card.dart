import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 76,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: buttonColor,
        boxShadow: [
          BoxShadow(
            offset: Offset(2, 10),
            blurRadius: 10,
            color: buttonColor.withOpacity(0.8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/identify_icon.png',
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'IDENTIFY',
            style: whiteTextStyle.copyWith(
              fontSize: 10,
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}

class MenuCard2 extends StatelessWidget {
  String? name;
  String? image;

  MenuCard2({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    MenuCard2();

    return Container(
      width: 100,
      height: 70,
      margin: EdgeInsets.only(
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.1),
            offset: const Offset(
              5.0,
              5.0,
            ),
            blurRadius: 5.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image.toString(),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            name.toString(),
            style: subtitleTextStyle.copyWith(
              fontSize: 10,
              fontWeight: semiBold,
            ),
          )
        ],
      ),
    );
  }
}
