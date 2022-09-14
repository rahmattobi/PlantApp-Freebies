import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';
import 'package:plantapp/widget/cactus_card.dart';

class SpeciesPageDetail extends StatelessWidget {
  const SpeciesPageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget header() {
      return Column(
        children: [
          Container(
            height: size.height * 0.28,
            child: Stack(
              children: [
                Container(
                  height: size.height * 0.28 - 20,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/header_background.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: defaultMargin,
                    right: defaultMargin,
                    top: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: whiteColor,
                            ),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: whiteColor,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Cactus",
                        style: whiteTextStyle.copyWith(
                          fontSize: 30,
                          fontWeight: bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(
                      right: defaultMargin,
                      left: defaultMargin,
                    ),
                    height: 50,
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: secondaryColor.withOpacity(0.25),
                        ),
                      ],
                    ),
                    child: Container(
                        height: 50,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Icon(
                                Icons.search,
                                color: searchColor,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Search For Cactus',
                                    hintStyle: searchTextStyle,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          top: 25,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(
          children: [
            CactusCard(
              image: 'assets/kaktus7.png',
              name: 'Red Cactus',
              kingdom: 'Plantae',
              family: 'Cactaceae',
              description:
                  'Cactus spines are produced from specialized structures Lorem Ipsum bla bla bla ',
            ),
            CactusCard(
              image: 'assets/kaktus1.png',
              name: 'Fat Cactus',
              kingdom: 'Plantae',
              family: 'Cactaceae',
              description:
                  'Cactus spines are produced from specialized structures Lorem Ipsum bla bla bla ',
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/detail_page');
              },
              child: CactusCard(
                image: 'assets/kaktus2.png',
                name: 'Circle Cactus',
                kingdom: 'Plantae',
                family: 'Cactaceae',
                description:
                    'Cactus spines are produced from specialized structures Lorem Ipsum bla bla bla ',
              ),
            ),
            CactusCard(
              image: 'assets/kaktus3.png',
              name: 'Cute Cactus',
              kingdom: 'Plantae',
              family: 'Cactaceae',
              description:
                  'Cactus spines are produced from specialized structures Lorem Ipsum bla bla bla ',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
