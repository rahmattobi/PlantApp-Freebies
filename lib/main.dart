import 'package:flutter/material.dart';
import 'package:plantapp/onBoardingPage/slider_page.dart';
import 'package:plantapp/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _currentPage = 0;
  PageController _controller = PageController();

  List<Widget> _pages = [
    SliderPage(
      'assets/a.png',
      'Identify Plants',
      'You can identify the plants you don\'t know \n through your camera',
    ),
    SliderPage(
      'assets/b.png',
      'Learn Many Plants Species',
      'Let\'s learn about the many plant species that \n exist in this world',
    ),
    SliderPage(
      'assets/c.png',
      'Read Many Articles About Plant',
      'Let\'s learn more about beautiful plants and read \n many articles about plants and gardening',
    ),
  ];

  _onchanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            onPageChanged: _onchanged,
            controller: _controller,
            itemCount: _pages.length,
            itemBuilder: (context, int index) {
              return _pages[index];
            },
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                  _pages.length,
                  (int index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      height: 10,
                      width: (index == _currentPage) ? 20 : 10,
                      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (index == _currentPage)
                            ? buttonColor
                            : secondaryColor,
                      ),
                    );
                  },
                ),
              ),
              InkWell(
                onTap: () {
                  _controller.nextPage(
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeInOutQuint);
                },
                child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: Duration(milliseconds: 300),
                  height: 50,
                  width: 330,
                  decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: (_currentPage == (_pages.length - 1))
                      ? Text(
                          'SIGN UP',
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 15,
                          ),
                        )
                      : Text(
                          'NEXT',
                          style: whiteTextStyle.copyWith(
                            fontSize: 15,
                            fontWeight: bold,
                          ),
                        ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ],
      ),
    );
  }
}
