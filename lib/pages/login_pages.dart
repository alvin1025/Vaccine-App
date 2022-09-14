import 'package:flutter/material.dart';
import 'package:vaccine/style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    Widget imageBackGround() {
      return Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Container(
              width: 240,
              height: 180,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('images/login.png'),
              )),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Sign In',
              style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      );
    }

    Widget inputType() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 40),
        width: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Nomor Handphone',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Your Number',
                prefixIcon: const Icon(Icons.phone_android),
              ),
            )
          ],
        ),
      );
    }

    Widget footer() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Powered By',
              style: blackTextStyle.copyWith(fontSize: 20, fontWeight: bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 100,
              height: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/kemenkes.png'),
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageBackGround(),
          inputType(),
          Expanded(
            child: SizedBox(),
          ),
          footer()
        ],
      )),
    );
  }
}
