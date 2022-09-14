import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class ArticlesCard extends StatelessWidget {
  String? image;
  String? title;
  String? profile;
  String? name;
  String? date;

  ArticlesCard({
    this.image,
    this.title,
    this.profile,
    this.name,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 25,
      ),
      height: 260,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(13),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.1),
            offset: Offset(5, 5),
            blurRadius: 50,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 145,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              ),
              image: DecorationImage(
                image: AssetImage(
                  image.toString(),
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 15,
              left: 15,
              right: 15,
            ),
            child: Column(
              children: [
                Text(
                  title.toString(),
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: bold,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            profile.toString(),
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name.toString(),
                            style: primaryTextStyle.copyWith(
                              fontSize: 11,
                              fontWeight: medium,
                            ),
                          ),
                          Text(
                            date.toString(),
                            style: abjadTextStyle.copyWith(
                              fontSize: 10,
                              fontWeight: medium,
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark_border,
                          color: Color(0xffb9b9b9),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(
                          Icons.favorite_border,
                          color: Color(0xffb9b9b9),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
