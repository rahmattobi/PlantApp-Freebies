import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class PhotoCard extends StatelessWidget {
  const PhotoCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: primaryColor.withOpacity(0.05),
            offset: Offset(5, 5),
            blurRadius: 50,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 146,
                height: 300,
                child: ClipRRect(
                  child: Image.asset(
                    'assets/kaktus3.png',
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        bottom: 10,
                      ),
                      height: 145,
                      width: double.infinity,
                      color: whiteColor,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/kaktus8.png',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                      ),
                      height: 145,
                      width: double.infinity,
                      color: whiteColor,
                      child: ClipRRect(
                        child: Image.asset(
                          'assets/kaktus9.png',
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
