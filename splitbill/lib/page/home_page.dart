import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splitbill/theme.dart';
import 'package:splitbill/widget/custom_button.dart';
import 'package:splitbill/widget/nearby_friends.dart';
import 'package:splitbill/widget/recent_activity.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget plusIcom() {
      return Container(
        height: 49,
        width: 49,
        decoration: BoxDecoration(
          color: Color(0xffED193F),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      );
    }

    Widget bottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: EdgeInsets.only(
            left: 29,
            right: 29,
            top: 13,
          ),
          margin: EdgeInsets.only(
            left: 24,
            right: 24,
            bottom: 30,
          ),
          width: MediaQuery.of(context).size.width,
          height: 60,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomButton(
                index: 0,
                imgUrl: 'assets/icon_home.png',
              ),
              CustomButton(
                index: 1,
                imgUrl: 'assets/icon_book.png',
              ),
              CustomButton(
                index: 2,
                imgUrl: 'assets/icon_card.png',
              ),
              CustomButton(
                index: 3,
                imgUrl: 'assets/icon_setting.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget profileIcon() {
      return Container(
        width: 50,
        height: 50,
        child: Image.asset(
          'assets/profile1.png',
          width: 50,
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff343A40),
      body: ListView(
        padding: EdgeInsets.only(
          left: 24,
          right: 24,
          top: 40,
        ),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 65,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi Gede',
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: bold,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'SplitBill',
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/profile1.png',
                width: 60,
                height: 60,
              ),
            ],
          ),
          SizedBox(
            height: 23,
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 150,
                left: -25,
                child: Center(
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  left: 29,
                  top: 33,
                  right: 20,
                ),
                height: 275,
                width: MediaQuery.of(context).size.width - 48,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
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
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/kfc.png',
                          width: 100,
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Bills',
                              style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff848484),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'Rp 245.000',
                              style: GoogleFonts.nunito(
                                fontSize: 24,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              'King Fried Chicken',
                              style: GoogleFonts.nunito(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Color(0xff848484),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 31,
                    ),
                    Text(
                      'Split with',
                      style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/grup.png',
                          width: 135,
                        ),
                        Container(
                          height: 39,
                          width: MediaQuery.of(context).size.width - 273,
                          decoration: BoxDecoration(
                            color: Color(0xffFFC107),
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Center(
                            child: Text(
                              'Split Now',
                              style: GoogleFonts.nunito(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 28,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 14,
              top: 10,
              right: 14,
            ),
            height: 142,
            width: MediaQuery.of(context).size.width - 48,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
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
                ]),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby Friends',
                      style: GoogleFonts.nunito(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'See all',
                      style: GoogleFonts.nunito(
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffB3B3B3),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    plusIcom(),
                    NearbyFriends(
                      imgUrl: 'assets/friend1.png',
                    ),
                    NearbyFriends(
                      imgUrl: 'assets/friend2.png',
                    ),
                    NearbyFriends(
                      imgUrl: 'assets/friend3.png',
                    ),
                    NearbyFriends(
                      imgUrl: 'assets/friend4.png',
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Activity',
                style: GoogleFonts.nunito(
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                'See all',
                style: GoogleFonts.nunito(
                  fontSize: 13,
                  fontWeight: FontWeight.w800,
                  color: Color(0xffB3B3B3),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 11,
          ),
          RecentActivity(
            imgUrl: 'assets/coffee.png',
            title: 'Coffee',
            date: '8 Jan, 2022',
            price: '65.000',
            person: '4',
          ),
          SizedBox(
            height: 13,
          ),
          RecentActivity(
            imgUrl: 'assets/coffee.png',
            title: 'Coffee',
            date: '9 Jan, 2022',
            price: '87.000',
            person: '4',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
