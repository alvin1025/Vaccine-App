import 'package:flutter/material.dart';
import 'package:vaccine/style.dart';

class AdvantagesCard extends StatelessWidget {
  const AdvantagesCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 102,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            child: Image.asset('images/ad1.png'),
          ),
          Text('Menciptakan Herd Immunity', style: blackTextStyle.copyWith(fontSize: 8),)
        ],
      ),
    );
  }
}
