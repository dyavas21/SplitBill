import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RecentActivity extends StatelessWidget {
  String? imgUrl;
  String? title;
  String? date;
  String? price;
  String? person;

  RecentActivity({
    this.imgUrl,
    this.title,
    this.date,
    this.price,
    this.person,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 76,
      margin: EdgeInsets.only(
        left: 24,
        right: 24,
      ),
      padding: EdgeInsets.only(
        top: 12.67,
        left: 14,
        right: 14,
        bottom: 12.67,
      ),
      width: MediaQuery.of(context).size.width - 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: const Offset(
              0,
              3.0,
            ),
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      child: Row(
        children: [
          Image.asset(
            imgUrl!,
            width: 48,
            height: 60.8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title!,
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  date!,
                  style: GoogleFonts.nunito(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xffB3B3B3),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                'Rp ' + price!,
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                person! + " persons",
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffB3B3B3),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
