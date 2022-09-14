import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';
import 'package:plantapp/widget/articles_card.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({Key? key}) : super(key: key);

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
                        "Articles",
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
                                    hintText: 'Search For Articles',
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
        margin: EdgeInsets.symmetric(
          vertical: defaultMargin,
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            ArticlesCard(
              image: 'assets/articles2.png',
              title:
                  'David Austin, Who Breathed Life Into the Rose, Is Dead at 92',
              profile: 'assets/profle.png',
              name: 'Rahmat Tobi Hidayat',
              date: '09 - 09 - 2022',
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/arctiles_detail');
              },
              child: ArticlesCard(
                image: 'assets/articles.png',
                title:
                    'Even on Urban Excursions, Finding Mother Nature\'s Charms',
                profile: 'assets/kaktus1.png',
                name: 'Rahmat Tobi Hidayat',
                date: '09 - 09 - 2022',
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          content(),
        ],
      ),
    );
  }
}
