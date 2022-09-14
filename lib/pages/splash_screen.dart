import 'package:flutter/material.dart';
import 'package:vaccine/style.dart';

class SplashPages extends StatelessWidget {
  const SplashPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('images/splash.png'))
              ),
            ),
            Text('Vaccine App', style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),)
          ],
        ),
      ),
    );
  }
}