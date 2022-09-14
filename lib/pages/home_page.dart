import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';
import 'package:plantapp/widget/menu_card.dart';
import 'package:plantapp/widget/photography_card.dart';
import 'package:plantapp/widget/plant_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                        top: 50,
                        left: defaultMargin,
                        right: defaultMargin,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hello Rahmat Tobi,',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 21,
                                  fontWeight: bold,
                                ),
                              ),
                              SizedBox(
                                height: 9,
                              ),
                              Text(
                                'Let’s Learn More About Plants',
                                style: whiteTextStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: regular,
                                ),
                              )
                            ],
                          ),
                          Image.asset(
                            'assets/profle.png',
                            fit: BoxFit.cover,
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ],
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
                                    hintText: 'Search For Plants',
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

    Widget menu() {
      return Container(
        margin: EdgeInsets.only(
          top: 35,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: [
                  MenuCard(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/species');
                    },
                    child: MenuCard2(
                      name: 'SPECIES',
                      image: 'assets/species_icon.png',
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/arctiles');
                    },
                    child: MenuCard2(
                      name: 'ARTICLES',
                      image: 'assets/articles_icon.png',
                    ),
                  ),
                  MenuCard2(
                    name: 'SPECIES',
                    image: 'assets/species_icon.png',
                  ),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget plantypesTitle() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: 24,
        ),
        child: Row(
          children: [
            Text(
              'Plant Types',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      );
    }

    Widget plantypes() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  PlantCard(),
                  PlantCard(),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget photographyTitle() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          top: 25,
        ),
        child: Row(
          children: [
            Text(
              'Photography',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 17,
              ),
            ),
          ],
        ),
      );
    }

    Widget photography() {
      return Container(
        margin: EdgeInsets.only(
          top: 15,
          bottom: 10,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: defaultMargin,
                  ),
                  PhotographyCard(type: '# Mini', image: 'assets/kaktus3.png'),
                  PhotographyCard(type: '# Home', image: 'assets/kaktus1.png'),
                  PhotographyCard(type: '# Cute', image: 'assets/kaktus2.png'),
                  PhotographyCard(type: '# Nice', image: 'assets/kaktus4.png'),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget customButtonNav() {
      return BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          // currentIndex: pageProvider.currentIndex,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/home_icon.png',
                  width: 20,
                ),
              ),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
              icon: Container(
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: Image.asset(
                  'assets/profile_icon.png',
                  width: 20,
                ),
              ),
              label: 'PROFILE',
            ),
          ],
          selectedLabelStyle: TextStyle(fontSize: 10),
          selectedItemColor: buttonColor,
          unselectedItemColor: searchColor,
          unselectedLabelStyle: TextStyle(fontSize: 10),
        ),
      );
    }

    Widget addButton() {
      return FloatingActionButton(
        onPressed: () {},
        child: Image.asset(
          'assets/add_icon.png',
          fit: BoxFit.cover,
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [
          header(),
          menu(),
          plantypesTitle(),
          plantypes(),
          photographyTitle(),
          photography(),
        ],
      ),
    );
  }
}
