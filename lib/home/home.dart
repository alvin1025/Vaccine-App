import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:vaccine/style.dart';
import 'package:vaccine/widget/advantages_card.dart';
import 'package:vaccine/widget/hospital_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HOME',
                    style:
                        blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Sakura',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage('images/saku.jpg'))),
            ),
          ],
        ),
      );
    }

    Widget info() {
      return Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(top: 20, right: 30, left: 30),
        width: double.infinity,
        height: 181,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Tahukah Anda?',
                  style: blackTextStyle.copyWith(
                      fontSize: 20, fontWeight: semiBold),
                ),
                SizedBox(
                  height: 10,
                ),
                Flexible(
                  child: Container(
                    width: 180,
                    child: Text(
                      'Amerika Serikat berhasil menurunkan angka covid hingga 80% setelah divaksin',
                      maxLines: 5,
                      style: blackTextStyle.copyWith(
                          fontSize: 16, fontWeight: semiBold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: 180,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: blueColor),
                    child: Center(
                        child: Text(
                      'Daftar Vaksinasi',
                      style: whiteTextStyle.copyWith(fontSize: 16),
                    )),
                  ),
                )
              ],
            ),
            Container(
              width: 120,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage('images/doc.png'))),
            ),
          ],
        ),
      );
    }

    Widget text() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Text(
          'Manfaat Vaksin',
          style: blackTextStyle.copyWith(fontSize: 20, fontWeight: reguler),
        ),
      );
    }

    Widget manfaatVaksin() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: 30,
              ),
              AdvantagesCard(),
              AdvantagesCard(),
              AdvantagesCard(),
              AdvantagesCard(),
              AdvantagesCard(),
            ],
          ),
        ),
      );
    }

    Widget text2() {
      return Container(
        margin: EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Vaksin Terdekat',
              style: blackTextStyle.copyWith(fontSize: 20, fontWeight: reguler),
            ),
            Container(
              width: 150,
                child: Row(
              children: [
                Icon(Icons.location_pin),
                Flexible(
                  child: Text(
                    'Jagakarsa, Jakarta Selatan',
                    overflow: TextOverflow.ellipsis,
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: reguler),
                  ),
                ),
              ],
            )),
          ],
        ),
      );
    }

    Widget hospital(){
      return Container(
        margin: EdgeInsets.only(top: 10, left: 30, right: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              HospitalCard(),
              HospitalCard(),
            ],
          ),
        ),
      );
    }


    return ListView(
      children: [header(), info(), text(), manfaatVaksin(), text2(), hospital()],
    );
  }
}
