import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splitbill/theme.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343A40),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
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
              Container(
                height: 275,
                width: MediaQuery.of(context).size.width - 48,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
