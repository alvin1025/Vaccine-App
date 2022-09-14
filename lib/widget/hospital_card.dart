import 'package:flutter/material.dart';
import 'package:vaccine/style.dart';

class HospitalCard extends StatelessWidget {
  const HospitalCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      padding: EdgeInsets.all(12),
      width: double.infinity,
      height: 81,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/rs1.png'),
              ),
            ),
          ),
          SizedBox(width: 5,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('RS Permata Depok', style: blackTextStyle.copyWith(fontSize: 14, fontWeight: reguler),),
              Row(
                children: [
                  Icon(Icons.location_pin, color: Colors.grey, size: 12,),
                  Container(child: Text("Jl. Raya Muchtar No.22, Sawangan Baru", style: greyTextStyle.copyWith(fontSize: 12),))
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
