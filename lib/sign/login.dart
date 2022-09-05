import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: whiteColor,
        leading: BackButton(color: subtitleColor),
        elevation: 0,
      );
    }

    Widget hello() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(left: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              'Hello',
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
                fontSize: 30,
                decoration: TextDecoration.none,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Let’s Learn More About Plants',
              style: subtitleTextStyle.copyWith(
                fontSize: 16,
                fontWeight: regular,
                decoration: TextDecoration.none,
              ),
            )
          ],
        ),
      );
    }

    Widget username() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                TextField(
                  controller: usernameController,
                  style: primaryTextStyle.copyWith(
                    fontSize: 17,
                    fontWeight: medium,
                    decoration: TextDecoration.none,
                  ),
                  decoration: InputDecoration(
                    suffixIcon: usernameController.text.isNotEmpty
                        ? IconButton(
                            icon: Icon(
                              Icons.done,
                              size: 16,
                            ),
                            onPressed: () {},
                          )
                        : null,
                    labelText: 'Username',
                    labelStyle: subtitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                    hoverColor: buttonColor,
                    hintStyle: subtitleTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: buttonColor,
                      ), //<-- SEE HERE
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget password() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5,
            ),
            Column(
              children: [
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: primaryTextStyle.copyWith(
                    fontSize: 17,
                    fontWeight: medium,
                    decoration: TextDecoration.none,
                  ),
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: subtitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: medium,
                    ),
                    hoverColor: buttonColor,
                    hintStyle: subtitleTextStyle.copyWith(
                      fontSize: 12,
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: buttonColor,
                      ), //<-- SEE HERE
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }

    Widget remember() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: 10,
          top: 30,
        ),
        child: Row(
          children: [
            Checkbox(
              value: _isChecked,
              activeColor: Color(0xff00C8E8),
              onChanged: (value) {},
            ),
            Expanded(
              child: Text(
                'Remember me',
                style: subtitleTextStyle.copyWith(
                  fontSize: 12,
                  fontWeight: regular,
                ),
              ),
            ),
            Text(
              'Forgot Password ?',
              style: subtitleTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
          ],
        ),
      );
    }

    Widget loginButton() {
      return Container(
        height: 50,
        margin: EdgeInsets.only(
          right: defaultMargin,
          left: defaultMargin,
          top: 55,
        ),
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/main');
          },
          style: TextButton.styleFrom(
            backgroundColor: buttonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: Text(
            'LOGIN',
            style: whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
          top: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don’t Have Account?',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: regular,
              ),
            ),
            GestureDetector(
              onTap: () {
                // Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(' Sign Up',
                  style:
                      greenTextStyle.copyWith(fontSize: 12, fontWeight: bold)),
            )
          ],
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor1,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            hello(),
            username(),
            password(),
            remember(),
            Spacer(),
            loginButton(),
            footer(),
          ],
        ),
      ),
    );
  }
}
